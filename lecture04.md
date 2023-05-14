# 第4回課題　　
1. 新しいVPNの作成  
1. EC2,RDSの作成  
1. EC2からRDSの接続
## 1. VPCの作成
<img width="2067" alt="VPC作成" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/b272db50-48ab-440f-86c0-54c8e592257a">

## 2-1. EC2インスタンスの作成
<img width="2067" alt="EC2インスタンス作成" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/ed72704a-3dc3-4547-a7d0-9112a4507e31">


#### EC2への接続
<img width="1256" alt="EC2からssh接続" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/3b5a1b35-c049-42bd-a67e-c96f9c4eb9ec">

エラー1:　`Operation timed out`  
ssh接続ができない  
- VPC のサブネット・インターネットゲートウェイを確認する  
- ルートテーブルの設定を確認する  
  →インターネットゲートウェイの設定を追加する  
  
参照URL : [AWS EC2 に SSH 接続できない・繋がらないときの確認項目](https://xn--o9j8h1c9hb5756dt0ua226amc1a.com/?p=3583)

##### →接続できた！

## 2-2. RDSの作成

<img width="2101" alt="RDS作成1" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/4beee966-5b04-4b27-b2b0-32c28a3684bf">

設定  
<img width="2108" alt="RDS作成２" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/621772a4-641d-4c2e-9d54-4b55668f0ea9">

エラー２:`ERROR 1045 (28000): Access denied for user 'ec2-user'@'xxx.xxx.xxx' (using password: YES)`  

原因：mysql文のユーザー名を記載していなかった  
`mysql -u <ユーザー名> -p -h <RDSエンドポイント>`
で接続できた！

- 最初全然繋がらなくて、セキュリティグループ設定やRDSのパラメータグループ設定など、ググって出てきたことをした。  
- エラー文は「ec2-userっていうuser名じゃアクセス拒否するよ」ということだった。
- ググるのことも大事だけど、構文とかエラー文の内容をよく理解することが重要  
  
<img width="1256" alt="RDS接続" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/d81b6cf2-2a2d-42a3-b274-80e0845d895b">

### 追記
mysqlの事前準備をしていなかったため、ドキュメント通りに実行、問題なく完了
<img width="1256" alt="mysqlの事前準備" src="https://github.com/sakinemoto/RaisetechAWS/assets/88425419/8112834b-41c4-43a9-a9ac-becafd58ed3f">
