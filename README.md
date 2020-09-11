## grad-thesis

- [卒論](./main.pdf)
- [TypeProfiler.jl](https://github.com/aviatesk/TypeProfiler.jl)

### TODO

0. [概要](./abstract.tex)
1. [はじめに](./section2.tex)
2. [静的な型エラー検出を考える上でのJulia言語の考察と先行研究](./section2.tex)
   1. Julia言語の特徴と静的解析
      + [x] generic function
      + [x] metaprogramming
   2. 先行研究
      + [x] type checking by type annotation
      + [x] type profiling
      + [x] StaticLint.jl
3. [型プロファイラの設計](./section3.tex)
   1. why "type profiler"
   2. Juliaのinference
      + [x] アルゴリズム
      + [x] 収束性とヒューリスティック
      + [x] correctness
   3. TypeProfiler.jlの設計と性質
      1. 設計
         - [ ] 「型エラー」を定義: TypeProfiler.jlが報告するエラー
         - [ ] 実装方法
         - [ ] 型検査関数: builtin function calls
      2. [ ] 性質
         - [ ] 型安全性: TypeProfiler.jlによって「設計」で定義したエラーがすべて報告される
         - [ ] 収束性
         - [ ] correctness
         - [x] misc: マクロを含むコード
         - [x] appendix: concrete typed code
4. [評価](./section4.tex)
   * 実験と比較
      + [ ] demo: profiling on examples in section 2~3
      + [ ] vs. ruby-type-profiler (NOTE: recently updated)
5. [まとめ](./conclusion.tex)
6. [参考文献](./main.bib)
