.class public abstract Lcom/gcore/abase/apollobuffer/ApolloBufferBase;
.super Ljava/lang/Object;
.source "ApolloBufferBase.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    .locals 0

    return-void
.end method

.method protected BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
    .locals 0

    return-void
.end method

.method public Decode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->ReadFrom(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public Decode([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    new-instance v1, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;

    invoke-direct {v1, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;-><init>([B)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeDecode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->ReadFrom(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public Encode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->WriteTo(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public Encode()[B
    .locals 1

    .line 12
    :try_start_0
    new-instance v0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;

    invoke-direct {v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;-><init>()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->BeforeEncode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->WriteTo(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V

    .line 16
    invoke-virtual {v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->GetBufferData()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract ReadFrom(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)V
.end method

.method public abstract WriteTo(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)V
.end method
