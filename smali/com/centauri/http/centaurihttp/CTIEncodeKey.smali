.class public Lcom/centauri/http/centaurihttp/CTIEncodeKey;
.super Ljava/lang/Object;
.source "CTIEncodeKey.java"


# static fields
.field public static MIX_MD5:Ljava/lang/String;

.field public static randomBytes:[B

.field public static strEncodeKey:Ljava/lang/String;


# instance fields
.field public key:Ljava/lang/String;

.field public keyType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x28

    .line 17
    new-array v0, v0, [B

    sput-object v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->randomBytes:[B

    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 23
    sget-object v1, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->randomBytes:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 25
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->randomBytes:[B

    const-string v3, "ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->strEncodeKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 28
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->randomBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->strEncodeKey:Ljava/lang/String;

    .line 30
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1234567890123456"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->MIX_MD5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "base"

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEKey()Ljava/lang/String;
    .locals 2

    .line 43
    sget-object v0, Lcom/centauri/http/utils/SPUtils;->FK_MODEL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/centauri/http/utils/SPUtils;->SK_MODEL:Ljava/lang/String;

    .line 44
    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/centauri/http/utils/SPUtils;->TK_MODEL:Ljava/lang/String;

    .line 45
    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/centauri/http/utils/SPUtils;->FK_MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/centauri/http/utils/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/centauri/http/utils/SPUtils;->SK_MODEL:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Lcom/centauri/http/utils/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/centauri/http/utils/SPUtils;->TK_MODEL:Ljava/lang/String;

    .line 50
    invoke-static {v1}, Lcom/centauri/http/utils/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setEKey(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lcom/centauri/http/utils/SPUtils;->FK_MODEL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/centauri/http/utils/SPUtils;->SK_MODEL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/centauri/http/utils/SPUtils;->TK_MODEL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/http/utils/SPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    return-void
.end method
