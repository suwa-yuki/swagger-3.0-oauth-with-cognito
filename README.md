# Swagger 3.0 OAuth 2 Authentication / Authorization using Amazon Cognito User Pools

## How To Use

See 👉 [Swagger 3\.0のOAuth認証にCognito User PoolsのOAuth Clientを使う ｜ Developers\.IO](https://dev.classmethod.jp/tool/swagger/swagger-3-oauth-cognito-user-pools/)

### Create Cogntio User Pools Client

![images/cognito-client.png](images/cognito-client.png)

### Modify swagger.yaml

```
components:
  securitySchemes:
    OAuth2:
      type: oauth2
      description: For more information, see https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html
      flows:
        authorizationCode:
          authorizationUrl: https://<your domain>.auth.ap-northeast-1.amazoncognito.com/oauth2/authorize
          tokenUrl: https://<your domain>.auth.ap-northeast-1.amazoncognito.com/oauth2/token
          scopes:
            openid: openid token
```

### docker-compose up

```bash
$ docker-compose up -d
```

### Access

http://localhost:3200/

![images/sample.png](images/sample.png)
