.class public Lcom/gcore/abase/apollobuffer/ApolloBufferReader;
.super Ljava/lang/Object;
.source "ApolloBufferReader.java"


# instance fields
.field private bs:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public Read(B)B
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Read(I)I
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    :goto_0
    return p1
.end method

.method public Read(J)J
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public Read(Lcom/gcore/abase/apollobuffer/ApolloBufferBase;)Lcom/gcore/abase/apollobuffer/ApolloBufferBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1, p0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->Decode(Lcom/gcore/abase/apollobuffer/ApolloBufferReader;)Z

    :cond_0
    return-object p1
.end method

.method public Read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 197
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(B)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_0

    .line 202
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(S)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 224
    const-string p1, ""

    .line 225
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 227
    :cond_5
    instance-of v0, p1, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;

    if-eqz v0, :cond_6

    .line 229
    check-cast p1, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;

    .line 230
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(Lcom/gcore/abase/apollobuffer/ApolloBufferBase;)Lcom/gcore/abase/apollobuffer/ApolloBufferBase;

    move-result-object p1

    goto :goto_0

    .line 232
    :cond_6
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 234
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->ReadList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 236
    :cond_7
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 238
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->ReadMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_8
    const-string p1, "ABase"

    const-string v0, "ApolloBufferReader Read Unknown Type"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public Read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :cond_1
    return-object v0
.end method

.method public Read(S)S
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    :goto_0
    return p1
.end method

.method public Read(Z)Z
    .locals 1

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(B)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public Read([B)[B
    .locals 1

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 55
    new-array p1, p1, [B

    .line 56
    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ReadList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 131
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_2

    .line 145
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {p0, v3}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v2

    .line 122
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public ReadMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->ReadMap(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public ReadMap(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 162
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 166
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 168
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(I)I

    move-result v2

    if-gtz v2, :cond_1

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_2

    .line 178
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-virtual {p0, p2}, Lcom/gcore/abase/apollobuffer/ApolloBufferReader;->Read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 180
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 163
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
