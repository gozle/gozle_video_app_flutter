class OAuthClient {
  final String clientId;
  final String callbackUri;
  final String loginUri;
  final String codeChallenge;
  final String codeVerifier;

  OAuthClient({
    required this.clientId,
    required this.callbackUri,
    required this.loginUri,
    required this.codeChallenge,
    required this.codeVerifier,
  });

  OAuthClient.fromJson(Map<String, dynamic> json)
      : clientId = json['client_id'] as String,
        callbackUri = json['callback_uri'] as String,
        loginUri = json['login_uri'] as String,
        codeChallenge = json['code_challenge'] as String,
        codeVerifier = json['code_verifier'] as String;

  Map<String, dynamic> toJson() => {
        'client_id': clientId,
        'callback_uri': callbackUri,
        'login_uri': loginUri,
        'code_challenge': codeChallenge,
        'code_verifier': codeVerifier
      };
}
