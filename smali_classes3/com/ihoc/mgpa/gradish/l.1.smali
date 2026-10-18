.class public Lcom/ihoc/mgpa/gradish/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/l$c;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/l$c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/gradish/l$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    const/16 v0, 0x20

    .line 5
    :try_start_0
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->getRandom(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->e:Ljava/lang/String;

    .line 6
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDyN9OexXciliWw+i91RbTh/OWL1Jp4p842R+h8eTJfp/3f78sKbggAJv3pcuQRmsOj5f+8MqvlCuCrykySN/S4ugKiSEHveZS7oGAsRSLW9aPpYNe9xcfCB7CegJJop9VOq6mbLSDBlF0maHCS0eszDFTY5joKnVycZ7gW0KDryQIDAQAB"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/RSAUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/l$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->f()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    .line 27
    sget-object p1, Lcom/ihoc/mgpa/gradish/o;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->b:Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/predown/pd_control"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->d()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cloudctrl/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    goto :goto_1

    .line 31
    :cond_2
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->d()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    .line 32
    sget-object p1, Lcom/ihoc/mgpa/gradish/o;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->b:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cloudctrl/spa"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    goto :goto_1

    .line 34
    :cond_3
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->e()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    .line 35
    sget-object p1, Lcom/ihoc/mgpa/gradish/o;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->b:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cloudctrl/cloud_ctrl_v2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;
    .locals 7

    const-string v0, "data"

    const-string v1, "ret"

    const-string v2, "download config ret is not zero, ple check ret: "

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 122
    :try_start_0
    const-string p1, "download config is null, ple check!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->x:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isJSONValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/l;->e:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->decryptFromBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    :goto_0
    const-string v4, "%s download config response content: %s"

    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {v5}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const/4 v5, 0x1

    aput-object p1, v6, v5

    invoke-static {v4, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 136
    const-string p1, "download config has no ret, ple check!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->C:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 139
    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    .line 142
    const-string p1, "download config ret == 100, USE CACHE!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->v:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->D:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 149
    :cond_4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 150
    const-string p1, "download config has no data, ple check! "

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->E:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    .line 153
    :cond_5
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    .line 154
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "download config parse exception, ple check! "

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->B:Lcom/ihoc/mgpa/gradish/C;

    return-object p1

    :catch_1
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "download config parse json exception, ple check content! "

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object p1, Lcom/ihoc/mgpa/gradish/C;->A:Lcom/ihoc/mgpa/gradish/C;

    return-object p1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/l;)Lcom/ihoc/mgpa/gradish/l$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 3
    const-string v0, "DeviceTag"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 9

    const-string v0, "UTF-8"

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 13
    :cond_0
    const-string v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_1
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 16
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "[transformToEncryptMap]: before encrypted params: %s"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/l;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v3, "encrypted_key"

    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v3, "encrypted_data"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 26
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "[transformToEncryptMap]: request CloudCtrl by encrypt error."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/l;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/A;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;Lcom/ihoc/mgpa/gradish/A;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ihoc/mgpa/gradish/A;)V
    .locals 4

    .line 28
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/C;->b:Lcom/ihoc/mgpa/gradish/C;

    .line 29
    sget-object v0, Lcom/ihoc/mgpa/gradish/l$b;->a:[I

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    .line 53
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isJSONValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->decryptFromBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/ihoc/mgpa/gradish/A;->a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    sput-wide p1, Lcom/ihoc/mgpa/gradish/u0;->e:J

    goto :goto_1

    .line 60
    :cond_2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/ihoc/mgpa/gradish/A;->a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 62
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/ihoc/mgpa/gradish/A;->a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_4
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/ihoc/mgpa/gradish/A;->a(Lcom/ihoc/mgpa/gradish/C;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    sput-wide v0, Lcom/ihoc/mgpa/gradish/p;->a:J

    .line 72
    sget-object p2, Lcom/ihoc/mgpa/gradish/C;->v:Lcom/ihoc/mgpa/gradish/C;

    if-eq p1, p2, :cond_5

    .line 73
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 104
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "async download config, parse response content exception."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "%s config download success, but don\'t need to save in file."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v3, "%s download config success, save file: %s"

    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {v4}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object p2, v5, v0

    invoke-static {v3, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-string v0, ""

    .line 172
    sget-object v3, Lcom/ihoc/mgpa/gradish/o;->c:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/gradish/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 176
    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "download config save to file exception, ple check!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/EncryptUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L0;->b()Lcom/ihoc/mgpa/gradish/L0;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/gradish/L0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 11
    :cond_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/l;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No Cloud Domain was setted, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 35
    :goto_1
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/l;->e(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugMode()Z

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/gradish/l;->h:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/util/HashMap;
    .locals 6

    .line 1
    const-string v0, "GCloud.GCloud.GameId"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string/jumbo v2, "tgpa"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v2, "plat_type"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x100b

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ver_code"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string/jumbo v2, "ver_name"

    const-string v3, "4.1.0.7"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "os_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "os_sdk"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->isYYBSimulator()Z

    move-result v2

    const-string v3, "simulator"

    const-string v4, "manufacturer"

    if-eqz v2, :cond_0

    .line 10
    const-string v2, "1"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getYYBManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v2, "0"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_0
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "brand"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 20
    const-string v0, "-1"

    :cond_1
    const-string v2, "gcloud_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->SP_KEY_USER_OPEN_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "open_id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->b()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "version"

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 31
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/L;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 32
    :goto_1
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 33
    :cond_4
    :goto_2
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-direct {p0, v3}, Lcom/ihoc/mgpa/gradish/l;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->resetInstallSign()V

    .line 40
    :goto_3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getInstallSign()Ljava/lang/String;

    move-result-object v0

    const-string v2, "install_sign"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[prepareCloudRequestData]: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MGPA|CloudConfig"

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 42
    const-string v0, "DeviceTag"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Ljava/util/HashMap;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/l;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sput-object p0, Lcom/ihoc/mgpa/gradish/l;->i:Ljava/lang/String;

    .line 3
    const-string v0, "domain"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f()Ljava/util/HashMap;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "GCloud.GCloud.GameId"

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v4}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_0

    .line 8
    const-string v4, "main_version_code"

    invoke-static {v4, v7}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_0
    invoke-static {v5}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    const-string/jumbo v5, "sub_version_code"

    invoke-static {v5, v7}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_version"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string/jumbo v6, "vc"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string/jumbo v2, "vn"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v2, "mv"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string/jumbo v2, "sv"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getGameChannelID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "channel_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v2, "sdk_version"

    const-string v3, "4.1.0.7"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x100b

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_code"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "xid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 25
    const-string v1, "-1"

    :cond_2
    const-string v2, "gcloud_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_sdk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getInstallSign()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILcom/ihoc/mgpa/gradish/A;)V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string/jumbo v0, "sync type: %s , url: %s , data: %s"

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->setConnectTimeout(I)V

    .line 107
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->setReadTimeout(I)V

    .line 108
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->postForm(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1, p3}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;Lcom/ihoc/mgpa/gradish/A;)V

    return-void
.end method

.method public a(Lcom/ihoc/mgpa/gradish/A;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string/jumbo v0, "sync type: %s , url: %s , data: %s"

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;

    new-instance v1, Lcom/ihoc/mgpa/gradish/l$a;

    invoke-direct {v1, p0, p1}, Lcom/ihoc/mgpa/gradish/l$a;-><init>(Lcom/ihoc/mgpa/gradish/l;Lcom/ihoc/mgpa/gradish/A;)V

    invoke-direct {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;->postForm(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[encryptData]: encrypt fail."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    const-string p1, ""

    return-object p1
.end method

.method public b(Lcom/ihoc/mgpa/gradish/A;)V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->a:Lcom/ihoc/mgpa/gradish/l$c;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/l$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string/jumbo v0, "sync type: %s , url: %s , data: %s"

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1388

    .line 10
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->setConnectTimeout(I)V

    .line 11
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->setReadTimeout(I)V

    .line 12
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/l;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/l;->d:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->postForm(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/ihoc/mgpa/gradish/l;->a(Ljava/lang/String;Lcom/ihoc/mgpa/gradish/A;)V

    return-void
.end method
