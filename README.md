# My nimlang warehouse

## Usage

```
$ nim c ファイル名
$ ./実行ファイル
```
上記の場合、デフォルトでGCCが使用されます。Clangを使用したい場合は以下のようにします。

```
$ nim c --cc:clang ファイル名
```
