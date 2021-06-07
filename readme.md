# プロダクトのタイトル
    ・こども作品ECサイト（管理用ページその２）

## プロダクトの紹介
    ・こどもが作ったものを販売しています



## 工夫した点，こだわった点
    ・登録作品の変更・削除機能を追加しました
    
    


## 苦戦した点，共有したいハマりポイントなど
    ・画像を変更するところに詰まった、、、エラーが出ないのに更新されない、、という状況に丸一日費やした。結果、、＄_POSTにidいれてなかった

## 解決手順
    ・POST確認:OK
    ・$image・$image_old確認:OK、値は最後まで送られていることを確認
    ・$status確認:OK,stmt->executeにはtrueが返ってる
    ・更新が反映されない、、、
    ・echo $stmt->rowCount(); で作用した行数を確認→0に！！！
    ・WHEREに指定したid確認、、$POST_['id];がないことに気づく。解決！
    丸一日詰まってたが、解決するときは一瞬、、、

## 感想
    ・更新処理は結構難しいこがわかった
    ・Unityと連携したかったがC#に詰まってできず、最低限の実装に、、、。
    ・JSとの連携からはじめてみたらよかったかな。次回は音声認識実装したい。