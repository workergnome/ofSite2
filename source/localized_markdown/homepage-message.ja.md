#### openFrameworksは、シンプルで先端的なフレームワークによって創作活動を支援するためのオープンソースのC++ツールキットです。ツールキットは、以下のリストあげたよく利用されるライブラリー群をまとめて汎用的な「糊」のような役割を果たすようにデザインされています。

* グラフィクス：[OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/), [cairo](http://cairographics.org/)
* オーディオの入出力と分析： [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/), [OpenAL](http://http://connect.creativelabs.com/openal), [Kiss FFT](http://kissfft.sourceforge.net/), [FMOD](http://www.fmod.org/)
* フォント：[FreeType](http://freetype.sourceforge.net/index2.html)
* イメージの読込と保存：[FreeImage](http://freeimage.sourceforge.net/)
* 動画の再生と取込：[Quicktime](http://developer.apple.com/quicktime/), [GStreamer](http://gstreamer.freedesktop.org/), [videoInput](https://github.com/ofTheo/videoInput)
* 様々なユーティリティー：[Poco](http://pocoproject.org/)

コードは様々なプラットフォームで動作するように書かれています。現在は、5つのOS(Windows, OSX, Linux, iOS, Android)と、4つの開発環境(XCode, Code::Blocks, and Visual Studio, Eclipse)をサポートしています。APIは最小限で把握し易いようデザインされています。

簡単に言うと、openFrameworksはコードにまつわる様々な事柄をずっと容易にしてくれるツールなのです。わたしたちはこのツールをとても便利と感じています、きっとあなたもそうなるでしょう。

openFrameworksはザック・リーバーマン(Zach Lieberman)、セオドア・ワトソン(Theodore Watson), アルトロ・カストロ(Arturo Castro)を中心にして、OFコミュニティーとともに開発されています。openFramewokrsは以下2つの先駆的なプロジェクトの恩恵を受けています。

* [Processing](http://processing.org/)：ケーシー・リーズ(Casey Reas)とベン・フライ(Ben Fry)を中心に開発された開発環境
* ACUツールキット：ベン・フライらによってMITメディアラボのAesthetics and Computation Groupで開発されたC++ライブラリ
