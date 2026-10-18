.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;
.super Ljava/lang/Object;
.source "FastHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public mHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;->mHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;->mHost:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;

    if-nez v0, :cond_1

    return v1

    .line 32
    :cond_1
    check-cast p1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;

    iget-object p1, p1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;->mHost:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;->mHost:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/FastHostnameVerifier;->mHost:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 18
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hostname: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " verify result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return p2
.end method
