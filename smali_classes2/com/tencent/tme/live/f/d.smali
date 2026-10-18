.class public Lcom/tencent/tme/live/f/d;
.super Ljava/lang/Object;


# static fields
.field public static g:Lcom/tencent/tme/live/f/d;


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:I

.field public e:[B

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/f/d;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f/d;->g:Lcom/tencent/tme/live/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/f/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/f/d;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/f/d;->g:Lcom/tencent/tme/live/f/d;

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/f/d;->g:Lcom/tencent/tme/live/f/d;

    return-object v0
.end method

.method public static a(Lcom/tencent/protocol/tme/cs_head/CSHead;)[B
    .locals 4

    iget-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->CMD_AUTH:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->getValue()I

    move-result v1

    const-string v2, "Session"

    const-string v3, "utf-8"

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/tencent/protocol/tme/auth/auth_subcmd;->SUBCMD_AUTH_TOKEN:Lcom/tencent/protocol/tme/auth/auth_subcmd;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/auth/auth_subcmd;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p0, Lcom/tencent/tme/live/e/a;->j:Ljava/lang/String;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 2
    :goto_0
    const-string v0, "1 getDecryptKey"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p0

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/f/d;->e:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_1
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_3
    iget-object p0, p0, Lcom/tencent/tme/live/f/d;->e:[B

    .line 4
    :goto_1
    const-string v0, "2 getDecryptKey : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method


# virtual methods
.method public b()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f/d;->c:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "access_token"

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/f/d;->c:[B

    return-object v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f/d;->a:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "openid"

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/f/d;->a:[B

    return-object v0
.end method
