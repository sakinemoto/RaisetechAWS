# 第13回課題  

## CircleCI のサンプルに ServerSpec や Ansible の処理を追加  

## CircleCIにcloudformation・ansible・serverspecの設定を追加  
  
- CirclecCI環境変数を設定
  - プロジェクト設定の「Environment Variables」を追加
    - AWS_ACCESS_KEY_ID
    - AWS_SECRET_ACCESS_KEY
    - AWS_DEFAULT_REGION
    - DB_PASSWORD
    - ENVIRONMENT_NAME
    - PRIVATE_KEY
  
## CircleCIの実行  

#### CloudFormationのテンプレートを使ってスタックを作成  

- CircleCIのconfig.ymlにCloudFormationのテンプレートを実行する処理を追加
- 実行結果  
  ![cloudformation](img/cloudformation.png)

#### Ansible　playbookの実行  

- CircleCIのconfig.ymlにAnsibleのplaybookを実行する処理を追加  
-実行結果  
![ansible](img/ansible.png)

#### Serverspecによるテスト実行  

- CircleCIのconfig.ymlにSeverspecのテスト実行する処理を追加  
- 実行結果  
  ![serverspec](img/severspec.png)

---

#### CircleCI実行結果  

![circleci](img/circleci.png)

#### ALBのDNS名でアクセス、アプリが動作することを確認

![app](img/app.png)
