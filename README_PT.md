# MeshLab — Documentação em Português

## O que é o MeshLab?

O **MeshLab** é um software de código aberto para **processamento, edição e análise de malhas 3D triangulares**. Ele foi desenvolvido para facilitar o trabalho com modelos 3D grandes e complexos, do tipo gerado por scanners 3D, fotogrametria e outras técnicas de captura de geometria.

Com o MeshLab você pode:

- 🧹 **Limpar e reparar malhas**: remover duplicatas, preencher buracos, corrigir normais invertidas
- 🔬 **Inspecionar geometria**: medir distâncias, ângulos, volumes, curvatura
- ✂️ **Editar e simplificar**: decimação de polígonos, suavização, corte, fusão de meshes
- 🎨 **Renderizar e visualizar**: modo wireframe, texturas, mapas de normais, iluminação personalizada
- 🔄 **Converter formatos**: importa/exporta OBJ, PLY, STL, FBX, E57, GLTF, e muitos outros
- 📐 **Reconstrução de superfície**: geração de malhas a partir de nuvens de pontos
- 🔎 **Ferramentas científicas**: alinhamento de scans (ICP), análise de qualidade, filtragem avançada

É amplamente usado em **arqueologia, medicina, engenharia reversa, animação 3D e pesquisa acadêmica**.

---

## 🚀 Como executar (sem precisar compilar)

O executável já compilado está disponível diretamente na pasta:

```
build\src\distrib\meshlab.exe
```

Basta dar **dois cliques** no arquivo `meshlab.exe` para abrir o programa.  
Todos os arquivos necessários (DLLs, plugins, shaders) já estão na mesma pasta.

> **Nota:** O programa foi compilado para **Windows 64-bit** com Qt 5.15.2 e MSVC 2019.

---

## 📁 Estrutura do Projeto

| Pasta / Arquivo         | Descrição |
|-------------------------|-----------|
| `src/`                  | Código-fonte do MeshLab e seus plugins |
| `src/meshlab/`          | Aplicação principal |
| `src/meshlabplugins/`   | Filtros e ferramentas como plugins |
| `src/common/`           | Biblioteca compartilhada de funções |
| `src/external/`         | Dependências externas (embree, glew, muparser...) |
| `build/src/distrib/`    | ✅ **Executável pronto para uso** |
| `resources/`            | Ícones, splash screen e recursos visuais |
| `sample/`               | Malhas de exemplo para testar |
| `scripts/`              | Scripts de build para Windows, Linux, macOS |
| `docs/`                 | Documentação técnica (Doxygen) |
| `build_temp.bat`        | Script de build local para Windows |

---

## 🛠️ Como (re)compilar do zero

Caso precise recompilar, você precisará de:

- **Visual Studio 2019 Build Tools** (MSVC x64)
- **Qt 5.15.2** instalado em `C:\Qt\5.15.2\msvc2019_64`
- **CMake** em `C:\Program Files\CMake`
- **Ninja** (via Chocolatey: `choco install ninja`)

Execute o script:

```bat
build_temp.bat
```

Ou manualmente na pasta `build/`:

```bat
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="C:\Qt\5.15.2\msvc2019_64" ..
ninja
```

---

## 📦 Dependências incluídas no executável

| Biblioteca         | Função |
|--------------------|--------|
| Qt 5.15.2          | Interface gráfica |
| Embree 4           | Raytracing de alta performance |
| VCGLib             | Processamento de malhas (core) |
| Open3MF / lib3mf   | Suporte ao formato 3MF |
| muParser           | Parser de expressões matemáticas |
| GLEW               | Extensões OpenGL |
| TBB                | Paralelismo (Intel Threading Building Blocks) |
| Xerces-C           | Parsing de XML |
| libgmp / libmpfr   | Aritmética de precisão arbitrária |

---

## 🔗 Links úteis

- Site oficial: https://www.meshlab.net
- Repositório original: https://github.com/cnr-isti-vclab/meshlab
- Licença: GPL (veja `LICENSE.txt`)

---

## 👤 Sobre esta versão

Esta é uma **versão local personalizada** do MeshLab, compilada e mantida para uso direto no Windows sem necessidade de instalação. O executável está incluído no repositório para facilitar a distribuição e evitar o processo de compilação.
