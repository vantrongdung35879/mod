.class public Lcom/centauri/http/centaurihttp/CTIHttpRequest;
.super Lcom/centauri/http/core/Request;
.source "CTIHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CTIHttpRequest"


# instance fields
.field private encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

.field private final encodeParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected needCentauriHostHeader:Z

.field protected needEndGetKeyInterceptor:Z

.field protected needFrontGetKeyInterceptor:Z

.field needUseBaseKeyToEncode:Z

.field public final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/centauri/http/core/Request;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->uuid:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needUseBaseKeyToEncode:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needFrontGetKeyInterceptor:Z

    .line 48
    iput-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needEndGetKeyInterceptor:Z

    .line 52
    iput-boolean v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needCentauriHostHeader:Z

    .line 56
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;

    .line 187
    iget-object v3, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    iput-object p2, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->value:Ljava/lang/String;

    return-void

    .line 197
    :cond_3
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;

    invoke-direct {v0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpRequest$1;)V

    .line 198
    iput-object p1, v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->key:Ljava/lang/String;

    .line 199
    iput-object p2, v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->value:Ljava/lang/String;

    .line 201
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 174
    :cond_4
    :goto_0
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;

    invoke-direct {v0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpRequest$1;)V

    .line 175
    iput-object p1, v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->key:Ljava/lang/String;

    .line 176
    iput-object p2, v0, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->value:Ljava/lang/String;

    .line 178
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public doEncodeParameters(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/centaurihttp/CTIEncodeKey;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 229
    :cond_1
    iget-object v0, p2, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 234
    :cond_2
    iput-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    .line 237
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->onEncodeStart()V

    .line 239
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParametersListToString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 245
    :cond_3
    invoke-virtual {p2}, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->getEKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getIV()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/centauri/http/centaurikey/CTIToolAES;->encryptAES(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    const-string p2, "encrypt_msg"

    invoke-virtual {p0, p2, p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string p1, "key_len"

    const-string p2, "newkey"

    invoke-virtual {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string p1, "key_time"

    invoke-virtual {p0, p1, p3}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg_len"

    invoke-virtual {p0, p2, p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->onEncodeFinish()V

    return-void
.end method

.method protected encodeParametersListToString()Ljava/lang/String;
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;

    .line 314
    iget-object v3, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    iget-object v3, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_1
    iget-object v2, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 327
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_4
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method final getEncodeKey()Lcom/centauri/http/centaurihttp/CTIEncodeKey;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    return-object v0
.end method

.method public final getEncodeKeyString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    return-object v0

    .line 70
    :cond_0
    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodeParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-object v1

    .line 139
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;

    .line 144
    iget-object v3, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    iget-object p1, v2, Lcom/centauri/http/centaurihttp/CTIHttpRequest$CTIHttpEncodeParameter;->value:Ljava/lang/String;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final getOfferIDFromRequest()Ljava/lang/String;
    .locals 2

    .line 111
    const-string v0, "offer_id"

    invoke-virtual {p0, v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 116
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getOpenIDFromRequest()Ljava/lang/String;
    .locals 2

    .line 97
    const-string v0, "openid"

    invoke-virtual {p0, v0}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 102
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method final hasEncodeParameters()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeParameters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncodeWithBaseKey()Z
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 272
    const-string v1, "base"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncodeWithCryptKey()Z
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 286
    const-string v1, "crypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncodeWithSecretKey()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->key:Ljava/lang/String;

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->encodeKey:Lcom/centauri/http/centaurihttp/CTIEncodeKey;

    iget-object v0, v0, Lcom/centauri/http/centaurihttp/CTIEncodeKey;->keyType:Ljava/lang/String;

    .line 279
    const-string v1, "secret"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onEncodeFinish()V
    .locals 0

    return-void
.end method

.method protected onEncodeStart()V
    .locals 0

    return-void
.end method
