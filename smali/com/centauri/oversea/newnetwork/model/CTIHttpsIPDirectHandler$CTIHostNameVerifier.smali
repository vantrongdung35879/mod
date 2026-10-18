.class Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;
.super Ljava/lang/Object;
.source "CTIHttpsIPDirectHandler.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CTIHostNameVerifier"
.end annotation


# instance fields
.field private currentHost:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "APHttpsIPDirectHandler"

    if-eqz v0, :cond_0

    .line 198
    const-string p1, "New Host name verifier, host header empty!"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "New Host name verifier, host header = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 224
    const-string v0, "APHttpsIPDirectHandler"

    const-string v1, "Host name verifier, equals called"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 230
    :cond_0
    instance-of v1, p1, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;

    if-nez v1, :cond_1

    return v0

    .line 234
    :cond_1
    check-cast p1, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;

    .line 235
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4

    .line 206
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p2

    .line 208
    const-string v0, ", host header = "

    const-string v1, "Host name verifier, host = "

    const-string v2, "APHttpsIPDirectHandler"

    if-eqz p2, :cond_0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", verify result true"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;->currentHost:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", verify result fail"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p2
.end method
