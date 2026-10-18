.class public Lcom/tencent/gsdk/api/GSDKSystem;
.super Ljava/lang/Object;
.source "GSDKSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/api/GSDKSystem$m;,
        Lcom/tencent/gsdk/api/GSDKSystem$g;,
        Lcom/tencent/gsdk/api/GSDKSystem$j;,
        Lcom/tencent/gsdk/api/GSDKSystem$i;,
        Lcom/tencent/gsdk/api/GSDKSystem$k;,
        Lcom/tencent/gsdk/api/GSDKSystem$l;,
        Lcom/tencent/gsdk/api/GSDKSystem$h;
    }
.end annotation


# static fields
.field public static A:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static B:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static C:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static D:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static E:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static F:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static G:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static H:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static I:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static J:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static K:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static L:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static M:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static N:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static O:Z = false

.field private static volatile P:Lcom/tencent/gsdk/api/GSDKSystem; = null

.field private static k:Landroid/content/Context; = null

.field private static l:I = 0x0

.field private static m:Ljava/lang/String; = "1.1.171"

.field private static n:Z = true

.field private static o:Z = true

.field private static p:Z = false

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/gsdk/api/GSDKSystem$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/tencent/gsdk/o0$a;

.field private c:Lcom/tencent/gsdk/api/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Lcom/tencent/gsdk/m;

.field private volatile g:Z

.field private h:Lcom/tencent/gsdk/api/GSDKSystem$i;

.field private i:Lcom/tencent/gsdk/w0;

.field private j:Lcom/tencent/gsdk/api/IEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/gsdk/api/GSDKSystem$a;

    invoke-direct {v0}, Lcom/tencent/gsdk/api/GSDKSystem$a;-><init>()V

    invoke-static {v0}, Lcom/tencent/gsdk/q0;->a(Lcom/tencent/gsdk/d0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    iput-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->f:Lcom/tencent/gsdk/m;

    const/4 v0, 0x0

    .line 606
    iput-boolean v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->g:Z

    .line 608
    sget-object v0, Lcom/tencent/gsdk/w0;->f:Lcom/tencent/gsdk/w0;

    iput-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 2
    sput p0, Lcom/tencent/gsdk/api/GSDKSystem;->w:I

    return p0
.end method

.method private a(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    :goto_0
    move-wide p1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    long-to-int p2, p1

    return p2
.end method

.method static synthetic a(Lcom/tencent/gsdk/api/GSDKSystem;)Lcom/tencent/gsdk/api/a;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->m:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const-string v0, "getSocketConnectivity close socket error:"

    const-string v1, "getSocketConnectivity error:"

    .line 137
    const-string v2, "-1"

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 146
    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 147
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 150
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 151
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v8

    .line 154
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v9, 0xbb8

    invoke-virtual {v3, v8, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 155
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 158
    :cond_1
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v8

    .line 167
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;)V

    .line 177
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 178
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;)V

    .line 183
    :goto_2
    throw p1

    :cond_2
    :goto_3
    if-nez p2, :cond_3

    const/4 p2, -0x1

    .line 184
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-1_-1_-1_-1_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_-1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/tencent/gsdk/api/GSDKSystem$g;)V
    .locals 11

    .line 185
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    iget p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string/jumbo v2, "t2"

    const-string v3, "s2"

    const-string/jumbo v4, "t1"

    const-string v5, "s1"

    const-string v6, "2"

    const-string v7, "-1"

    const-string v8, "1"

    if-ne p1, v1, :cond_1

    .line 191
    :try_start_1
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-object p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-wide v9, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 196
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-object p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-wide v9, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_0
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-object p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-wide v3, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 207
    :cond_3
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 208
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-object p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-wide v9, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 211
    :cond_4
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :goto_1
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 215
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-object p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget-wide v3, p1, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 218
    :cond_5
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_2
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/gsdk/api/GSDKSystem$m;

    .line 226
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 231
    :cond_7
    const-string p1, "gsdk_report_pay"

    invoke-static {p1, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    .line 233
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/api/GSDKSystem$g;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Lcom/tencent/gsdk/api/GSDKSystem$g;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/api/a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->d(Lcom/tencent/gsdk/api/a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/gsdk/api/GSDKSystem;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/gsdk/api/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/gsdk/api/b;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 698
    :try_start_0
    iget v5, v0, Lcom/tencent/gsdk/api/a;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, ""

    const-string v9, "gsdk_report_eventList"

    const-string/jumbo v10, "xg"

    const-string v11, "listname"

    const-string v12, "etime"

    const-string/jumbo v13, "time"

    const-string/jumbo v14, "tag"

    const-string v15, ","

    const-string v8, "list"

    if-ne v5, v6, :cond_14

    .line 700
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 701
    invoke-virtual {v5, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {v5, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v16, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-eqz v16, :cond_3

    .line 707
    sget-object v16, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v17, v7

    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 708
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v4, v20, v21

    const/16 v0, 0x400

    if-le v4, v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v17

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v4, v17

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object/from16 v17, v0

    const/16 v0, 0x2d

    if-le v6, v0, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v4, p5

    goto :goto_0

    :cond_2
    :goto_2
    move-object/from16 v4, v17

    .line 722
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x2d

    if-gt v6, v0, :cond_4

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 726
    :cond_3
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :cond_4
    :goto_3
    const-string v0, "cpu_list"

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-static {v9, v5}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 735
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {v0, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 741
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v7

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 742
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v4

    add-int v4, v18, v19

    const/16 v3, 0x400

    if-le v4, v3, :cond_5

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 749
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    move-object v5, v3

    const/16 v3, 0x2d

    if-le v6, v3, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v3, p4

    move-object/from16 v4, v20

    goto :goto_4

    .line 756
    :cond_7
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    const/16 v3, 0x2d

    if-gt v6, v3, :cond_9

    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 760
    :cond_8
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_9
    :goto_7
    const-string v3, "cpu_temp_list"

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-static {v9, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 768
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p4

    .line 770
    invoke-virtual {v0, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_d

    .line 774
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v7

    const/4 v6, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 775
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v4

    add-int v4, v18, v19

    const/16 v3, 0x400

    if-le v4, v3, :cond_a

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 782
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    move-object v5, v3

    const/16 v3, 0x2d

    if-le v6, v3, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 v3, p4

    move-object/from16 v4, v20

    goto :goto_8

    .line 789
    :cond_c
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const/16 v3, 0x2d

    if-gt v6, v3, :cond_e

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 793
    :cond_d
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_e
    :goto_b
    const-string v3, "gpu_temp_list"

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-static {v9, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 800
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 801
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p4

    .line 803
    invoke-virtual {v0, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_12

    .line 807
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v7

    const/4 v6, 0x0

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 808
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v4

    add-int v4, v18, v19

    const/16 v3, 0x400

    if-le v4, v3, :cond_f

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 815
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_d
    move-object v5, v3

    const/16 v3, 0x2d

    if-le v6, v3, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v3, p4

    move-object/from16 v4, v20

    goto :goto_c

    .line 822
    :cond_11
    :goto_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    const/16 v3, 0x2d

    if-gt v6, v3, :cond_13

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 826
    :cond_12
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_13
    :goto_f
    const-string v3, "gpu_usage_list"

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-static {v9, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    :cond_14
    move-object/from16 v0, p1

    .line 833
    iget v3, v0, Lcom/tencent/gsdk/api/a;->h:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 835
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 836
    invoke-virtual {v3, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p4

    .line 838
    invoke-virtual {v3, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v5, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    if-eqz v5, :cond_18

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_18

    .line 842
    sget-object v5, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v7

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 843
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v5

    add-int v5, v18, v19

    move-object/from16 v18, v12

    const/16 v12, 0x400

    if-le v5, v12, :cond_15

    .line 846
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 850
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_11
    move-object v6, v5

    const/16 v5, 0x2d

    if-le v4, v5, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v12, v18

    move-object/from16 v5, v20

    goto :goto_10

    :cond_17
    move-object/from16 v18, v12

    .line 857
    :goto_12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_19

    const/16 v5, 0x2d

    if-gt v4, v5, :cond_19

    .line 858
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_18
    move-object/from16 v18, v12

    .line 861
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :cond_19
    :goto_13
    const-string v4, "mem_list"

    invoke-virtual {v3, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    invoke-static {v9, v3}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_14

    :cond_1a
    move-object/from16 v18, v12

    .line 868
    :goto_14
    iget v3, v0, Lcom/tencent/gsdk/api/a;->f:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 870
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 871
    invoke-virtual {v3, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p4

    move-object/from16 v5, v18

    .line 873
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p0

    .line 875
    iget-object v12, v6, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v12}, Lcom/tencent/gsdk/w0;->e()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1e

    .line 876
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-eqz v16, :cond_1e

    .line 878
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v16, v7

    const/4 v6, 0x0

    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Short;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Short;->shortValue()S

    move-result v17

    .line 879
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v12

    add-int v12, v18, v19

    const/16 v0, 0x400

    if-le v12, v0, :cond_1b

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v16

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1b
    move-object/from16 v12, v16

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    move-object/from16 v16, v0

    const/16 v0, 0x2d

    if-le v6, v0, :cond_1c

    goto :goto_17

    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v12, v20

    goto :goto_15

    :cond_1d
    :goto_17
    move-object/from16 v12, v16

    .line 893
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const/16 v0, 0x2d

    if-gt v6, v0, :cond_1f

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 897
    :cond_1e
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_1f
    :goto_18
    const-string/jumbo v0, "udp_list"

    invoke-virtual {v3, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-static {v9, v3}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 904
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 905
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->M:Ljava/util/List;

    if-eqz v3, :cond_23

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_23

    .line 911
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->M:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v6, v7

    const/4 v12, 0x0

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 912
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v3

    add-int v3, v18, v19

    const/16 v4, 0x400

    if-le v3, v4, :cond_20

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    .line 919
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1a
    move-object v6, v3

    const/16 v3, 0x2d

    if-le v12, v3, :cond_21

    goto :goto_1b

    :cond_21
    move-object/from16 v4, p4

    move-object/from16 v3, v20

    goto :goto_19

    .line 926
    :cond_22
    :goto_1b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    const/16 v3, 0x2d

    if-gt v12, v3, :cond_24

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 930
    :cond_23
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_24
    :goto_1c
    const-string v3, "signal_list"

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {v9, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 937
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 938
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p4

    .line 940
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    if-eqz v4, :cond_28

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_28

    .line 944
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 945
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v12, v12, v18

    move-object/from16 v18, v4

    const/16 v4, 0x400

    if-le v12, v4, :cond_25

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 952
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1e
    move-object v7, v4

    const/16 v4, 0x2d

    if-le v6, v4, :cond_26

    goto :goto_1f

    :cond_26
    move-object/from16 v4, v18

    goto :goto_1d

    .line 959
    :cond_27
    :goto_1f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    const/16 v4, 0x2d

    if-gt v6, v4, :cond_29

    .line 960
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 963
    :cond_28
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    :cond_29
    :goto_20
    const-string v4, "link_speed_list"

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v4, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-static {v9, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_21

    :cond_2a
    move-object/from16 v3, p4

    move-object/from16 v5, v18

    :goto_21
    move-object/from16 v0, p1

    .line 970
    iget v0, v0, Lcom/tencent/gsdk/api/a;->e:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_31

    .line 972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 973
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p5

    .line 978
    iget-object v3, v2, Lcom/tencent/gsdk/api/b;->k:Ljava/lang/String;

    if-eqz v3, :cond_2b

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 979
    iget-object v2, v2, Lcom/tencent/gsdk/api/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_2b
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_2f

    .line 981
    array-length v3, v2

    if-eqz v3, :cond_2f

    .line 983
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_23
    if-ge v4, v3, :cond_2e

    aget-object v6, v2, v4

    .line 984
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v7, v12

    const/16 v12, 0x400

    if-le v7, v12, :cond_2c

    .line 986
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 990
    :cond_2c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    const/16 v6, 0x2d

    if-le v5, v6, :cond_2d

    goto :goto_25

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 997
    :cond_2e
    :goto_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_30

    const/16 v2, 0x2d

    if-gt v5, v2, :cond_30

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 1001
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    :cond_30
    :goto_26
    const-string v1, "fps_list"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v1, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-static {v9, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_27

    :catch_0
    move-exception v0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportGsdkList error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    :cond_31
    :goto_27
    return-void
.end method

.method private a(Lcom/tencent/gsdk/api/a;Ljava/util/HashMap;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/gsdk/api/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 659
    iget v3, v1, Lcom/tencent/gsdk/api/a;->a:I

    const-string v4, "pcntx00"

    const-string v5, "ptotal"

    const-string v6, "plost"

    const-string v7, "pheavy"

    const-string v8, "pavg"

    const-string v9, "pmax"

    const-string v10, "pmin"

    const-string v11, "-1"

    if-nez v3, :cond_5

    iget v3, v1, Lcom/tencent/gsdk/api/a;->f:I

    if-lez v3, :cond_5

    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-static {v3}, Lcom/tencent/gsdk/w0;->a(Lcom/tencent/gsdk/w0;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 661
    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v3}, Lcom/tencent/gsdk/w0;->e()Ljava/util/List;

    move-result-object v3

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v4

    move-wide v14, v12

    const/4 v4, 0x0

    .line 662
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v18, v5

    add-int/lit8 v5, v17, -0x1

    const-wide/16 v19, 0x1

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 663
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Short;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Short;->shortValue()S

    move-result v17

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Short;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Short;->shortValue()S

    move-result v21

    move/from16 v22, v5

    sub-int v5, v17, v21

    move-object/from16 v17, v6

    int-to-long v5, v5

    const-wide/16 v23, 0x64

    cmp-long v21, v5, v23

    if-ltz v21, :cond_0

    add-long v12, v12, v19

    .line 669
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    iget v5, v1, Lcom/tencent/gsdk/api/a;->m:I

    if-le v4, v5, :cond_1

    add-long v14, v14, v19

    :cond_1
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move/from16 v4, v22

    goto :goto_0

    :cond_2
    move-object/from16 v17, v6

    .line 673
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 674
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    iget v1, v1, Lcom/tencent/gsdk/api/a;->m:I

    if-le v4, v1, :cond_3

    add-long v14, v14, v19

    .line 678
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 682
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :goto_1
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v1}, Lcom/tencent/gsdk/w0;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v1}, Lcom/tencent/gsdk/w0;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v3}, Lcom/tencent/gsdk/w0;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v1}, Lcom/tencent/gsdk/w0;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v18

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v16

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v3, v6

    move-object/from16 v25, v5

    move-object v5, v4

    move-object/from16 v4, v25

    .line 691
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {v2, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-virtual {v2, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-virtual {v2, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 234
    iget-boolean v2, v0, Lcom/tencent/gsdk/api/GSDKSystem;->g:Z

    if-eqz v2, :cond_0

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/tencent/gsdk/api/GSDKSystem;->e()V

    const/4 v2, 0x0

    .line 236
    iput-boolean v2, v0, Lcom/tencent/gsdk/api/GSDKSystem;->g:Z

    .line 238
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/gsdk/api/GSDKSystem;->q:J

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->A:Ljava/util/List;

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->B:Ljava/util/List;

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->C:Ljava/util/List;

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->E:Ljava/util/List;

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->M:Ljava/util/List;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    .line 266
    iput-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->d:Ljava/lang/String;

    .line 267
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->y:Ljava/util/HashMap;

    .line 269
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->k()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/tencent/gsdk/api/GSDKSystem;->l:I

    invoke-static {v2, v3, v1}, Lcom/tencent/gsdk/n;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/tencent/gsdk/n$a;

    move-result-object v1

    .line 270
    iget-object v2, v1, Lcom/tencent/gsdk/n$a;->a:Lcom/tencent/gsdk/a;

    check-cast v2, Lcom/tencent/gsdk/w;

    invoke-virtual {v2}, Lcom/tencent/gsdk/w;->b()Lcom/tencent/gsdk/api/a;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Rsp]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v3, v3, Lcom/tencent/gsdk/api/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget-object v3, v3, Lcom/tencent/gsdk/api/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_GSDKStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 274
    const-string v2, "game"

    invoke-direct {v0, v2, v1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;Lcom/tencent/gsdk/n$a;)V

    .line 276
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/tencent/gsdk/api/a;->a:I

    if-nez v1, :cond_5

    .line 277
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/tencent/gsdk/api/GSDKSystem$f;

    invoke-direct {v3, v0}, Lcom/tencent/gsdk/api/GSDKSystem$f;-><init>(Lcom/tencent/gsdk/api/GSDKSystem;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 288
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    invoke-virtual {v0, v1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Lcom/tencent/gsdk/api/a;)V

    .line 290
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    invoke-virtual {v0, v1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/a;)V

    .line 292
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v1, v1, Lcom/tencent/gsdk/api/a;->i:I

    if-lez v1, :cond_1

    .line 293
    invoke-static {}, Lcom/tencent/gsdk/k;->a()I

    move-result v1

    sput v1, Lcom/tencent/gsdk/api/GSDKSystem;->t:I

    .line 295
    new-instance v4, Lcom/tencent/gsdk/api/GSDKSystem$i;

    sget-object v1, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/tencent/gsdk/api/GSDKSystem$i;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/tencent/gsdk/api/GSDKSystem;->h:Lcom/tencent/gsdk/api/GSDKSystem$i;

    .line 296
    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v1, v1, Lcom/tencent/gsdk/api/a;->u:I

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 299
    :cond_1
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v3, v1, Lcom/tencent/gsdk/api/a;->k:I

    int-to-long v8, v3

    const-wide/16 v11, 0x0

    cmp-long v3, v8, v11

    if-lez v3, :cond_2

    .line 300
    iget v3, v1, Lcom/tencent/gsdk/api/a;->f:I

    if-lez v3, :cond_2

    .line 301
    iget-object v3, v1, Lcom/tencent/gsdk/api/a;->c:Ljava/lang/String;

    iget v1, v1, Lcom/tencent/gsdk/api/a;->d:I

    invoke-static {v3, v1}, Lcom/tencent/gsdk/u0;->a(Ljava/lang/String;I)Lcom/tencent/gsdk/w0;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    .line 302
    invoke-static {v1}, Lcom/tencent/gsdk/w0;->a(Lcom/tencent/gsdk/w0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v4, v0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x0

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 307
    :cond_2
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v3, v1, Lcom/tencent/gsdk/api/a;->s:I

    int-to-long v8, v3

    cmp-long v3, v8, v11

    if-lez v3, :cond_3

    .line 309
    iget-object v4, v0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/tencent/gsdk/api/GSDKSystem$k;

    invoke-direct {v5, v1}, Lcom/tencent/gsdk/api/GSDKSystem$k;-><init>(Lcom/tencent/gsdk/api/a;)V

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x0

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 312
    :cond_3
    sget-object v1, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/gsdk/s;->b(Landroid/content/Context;)I

    move-result v1

    .line 313
    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v3, v3, Lcom/tencent/gsdk/api/a;->q:I

    if-lez v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    const/4 v3, -0x1

    .line 316
    sput v3, Lcom/tencent/gsdk/api/GSDKSystem;->u:I

    .line 318
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/gsdk/s;->e(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/tencent/gsdk/api/GSDKSystem;->v:I

    .line 321
    :try_start_0
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/gsdk/p0;->c(Landroid/content/Context;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    goto :goto_0

    :catch_0
    const-wide/16 v3, -0x1

    .line 326
    :goto_0
    sget-object v5, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 327
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_4
    iget-object v3, v0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    iget v4, v3, Lcom/tencent/gsdk/api/a;->t:I

    int-to-long v4, v4

    cmp-long v6, v4, v11

    if-lez v6, :cond_5

    .line 332
    iget-object v13, v0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v14, Lcom/tencent/gsdk/api/GSDKSystem$l;

    invoke-direct {v14, v3, v1}, Lcom/tencent/gsdk/api/GSDKSystem$l;-><init>(Lcom/tencent/gsdk/api/a;I)V

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v4

    invoke-interface/range {v13 .. v19}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 335
    :cond_5
    invoke-static {}, Lcom/tencent/gsdk/o0;->a()Lcom/tencent/gsdk/o0$a;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->b:Lcom/tencent/gsdk/o0$a;

    .line 337
    iput-boolean v2, v0, Lcom/tencent/gsdk/api/GSDKSystem;->g:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tencent/gsdk/n$a;)V
    .locals 7

    .line 1011
    iget-object v6, p2, Lcom/tencent/gsdk/n$a;->c:Ljava/lang/String;

    .line 1012
    iget v0, p2, Lcom/tencent/gsdk/n$a;->b:I

    .line 1013
    iget-object p2, p2, Lcom/tencent/gsdk/n$a;->d:Ljava/lang/String;

    .line 1016
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1017
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string p1, "rcr"

    invoke-virtual {v1, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "isCache"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string p1, "errMsg"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string p1, "gsdk_report_0"

    invoke-static {p1, v1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1023
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->j:Lcom/tencent/gsdk/api/IEventObserver;

    if-eqz p1, :cond_2

    .line 1025
    new-instance p2, Lcom/tencent/gsdk/api/Event;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tencent/gsdk/api/a;->a:I

    if-nez v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v1, "GetPVPConfig"

    const/4 v2, 0x1

    const-string v3, "getPVPConfig"

    const-string v4, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/gsdk/api/Event;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tencent/gsdk/api/IEventObserver;->onEvent(Lcom/tencent/gsdk/api/Event;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/tencent/gsdk/api/GSDKSystem$g;)V
    .locals 8

    const-string v0, "setPay id:"

    if-eqz p1, :cond_3

    .line 23
    sget-boolean v1, Lcom/tencent/gsdk/api/GSDKSystem;->o:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 31
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",tag:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",status:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->c:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",msg:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;)V

    .line 32
    iget v0, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->b:I

    invoke-static {v0}, Lcom/tencent/gsdk/api/c;->a(I)Lcom/tencent/gsdk/api/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gsdk setPay enum error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    :goto_0
    sget-object v3, Lcom/tencent/gsdk/api/c;->a:Lcom/tencent/gsdk/api/c;

    if-eq v0, v3, :cond_1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->c:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    sget-wide v4, Lcom/tencent/gsdk/api/GSDKSystem;->s:J

    sub-long v4, v1, v4

    .line 39
    new-instance v6, Lcom/tencent/gsdk/api/GSDKSystem$m;

    iget v7, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->b:I

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/tencent/gsdk/api/GSDKSystem$m;-><init>(ILjava/lang/String;J)V

    .line 40
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    iget v4, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    sput-wide v1, Lcom/tencent/gsdk/api/GSDKSystem;->s:J

    .line 43
    iget-boolean v1, p1, Lcom/tencent/gsdk/api/GSDKSystem$g;->c:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/gsdk/api/c;->c:Lcom/tencent/gsdk/api/c;

    if-ne v0, v1, :cond_3

    .line 44
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/GSDKSystem$g;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/gsdk/api/GSDKSystem;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/tencent/gsdk/api/GSDKSystem;->f()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/api/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->c(Lcom/tencent/gsdk/api/a;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/gsdk/api/GSDKSystem;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 45
    invoke-direct {p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request quality controller result is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;)V

    .line 50
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    const-string p1, "errno"

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 52
    const-string/jumbo v2, "switch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    .line 54
    const-string/jumbo v1, "suggest_quality"

    const-string v2, "-1_-1_-1_-1_-1_-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request quality controller suggestQuality is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/tencent/gsdk/q0;->c()Lcom/tencent/gsdk/q0;

    move-result-object v1

    .line 66
    instance-of v2, v1, Lcom/tencent/gsdk/q0$c;

    if-eqz v2, :cond_0

    .line 67
    new-instance p1, Lcom/tencent/gsdk/n0;

    const-string v2, "GSDKQualityCallback"

    invoke-direct {p1, v2, v0}, Lcom/tencent/gsdk/n0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/tencent/gsdk/q0;->a(Lcom/tencent/gsdk/n0;)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v2, Lcom/tencent/gsdk/n0;

    const-string v3, "SendQualityInfo"

    invoke-direct {v2, v3, v0, p1}, Lcom/tencent/gsdk/n0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/tencent/gsdk/q0;->a(Lcom/tencent/gsdk/n0;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 71
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/y;->a(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->y:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(Lcom/tencent/gsdk/api/a;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget v0, p1, Lcom/tencent/gsdk/api/a;->e:I

    .line 11
    iget v1, p1, Lcom/tencent/gsdk/api/a;->a:I

    .line 12
    iget v2, p1, Lcom/tencent/gsdk/api/a;->l:I

    .line 13
    iget v3, p1, Lcom/tencent/gsdk/api/a;->n:I

    .line 14
    iget v4, p1, Lcom/tencent/gsdk/api/a;->o:I

    .line 15
    iget v5, p1, Lcom/tencent/gsdk/api/a;->p:I

    .line 16
    iget v6, p1, Lcom/tencent/gsdk/api/a;->r:I

    .line 17
    iget-object p1, p1, Lcom/tencent/gsdk/api/a;->b:Ljava/lang/String;

    const-string v7, ""

    const-string/jumbo v8, "|"

    if-lez v0, :cond_1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|0|0|0|0|0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_0
    invoke-static {}, Lcom/tencent/gsdk/q0;->c()Lcom/tencent/gsdk/q0;

    move-result-object v0

    .line 27
    instance-of v1, v0, Lcom/tencent/gsdk/q0$c;

    if-eqz v1, :cond_2

    .line 28
    new-instance v1, Lcom/tencent/gsdk/n0;

    const-string v2, "GSDKStartCallback"

    invoke-direct {v1, v2, p1}, Lcom/tencent/gsdk/n0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/gsdk/q0;->a(Lcom/tencent/gsdk/n0;)V

    goto :goto_1

    .line 31
    :cond_2
    new-instance v1, Lcom/tencent/gsdk/n0;

    const-string v2, "SendInfo"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/tencent/gsdk/n0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/gsdk/q0;->a(Lcom/tencent/gsdk/n0;)V

    :goto_1
    return-void
.end method

.method static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/gsdk/api/GSDKSystem;->w:I

    return v0
.end method

.method private d(Lcom/tencent/gsdk/api/a;)V
    .locals 2

    .line 9
    iget p1, p1, Lcom/tencent/gsdk/api/a;->j:I

    if-lez p1, :cond_0

    .line 10
    invoke-static {}, Lcom/tencent/gsdk/y0;->j()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/gsdk/api/GSDKSystem;->r:J

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    const-string p1, "-1"

    return-object p1
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 3
    iput-object v1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->h:Lcom/tencent/gsdk/api/GSDKSystem$i;

    if-eqz v0, :cond_1

    .line 7
    iput-object v1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->h:Lcom/tencent/gsdk/api/GSDKSystem$i;

    .line 9
    :cond_1
    sget-object v0, Lcom/tencent/gsdk/w0;->f:Lcom/tencent/gsdk/w0;

    iget-object v2, p0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    if-eq v0, v2, :cond_2

    .line 10
    iput-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    .line 13
    :cond_2
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->A:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    :cond_3
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->B:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    :cond_4
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->C:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    :cond_5
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->E:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    :cond_6
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 26
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    :cond_7
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    :cond_8
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    :cond_9
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    :cond_a
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    :cond_b
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    :cond_c
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 44
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    :cond_d
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 47
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    :cond_e
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->M:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 50
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    :cond_f
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    :cond_10
    iput-object v1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->c:Lcom/tencent/gsdk/api/a;

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Lcom/tencent/gsdk/k;->b(I)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/tencent/gsdk/api/GSDKSystem;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/tencent/gsdk/api/GSDKSystem;->p:Z

    .line 9
    invoke-static {}, Lcom/tencent/gsdk/u0;->a()V

    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/tencent/gsdk/api/GSDKSystem;->p:Z

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 5
    const-string v0, "UTF-8"

    const-string v1, "quality"

    .line 0
    const-string v2, "request quality controller response code error is:"

    const-string v3, "request quality json:"

    const-string v4, "request quality controller url:"

    .line 5
    const-string v5, ""

    .line 6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    :try_start_0
    invoke-static {}, Lcom/tencent/gsdk/p;->c()Ljava/lang/String;

    move-result-object v7

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;)V

    .line 11
    invoke-static {v7}, Lcom/tencent/gsdk/c1;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 14
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 15
    const-string v8, "openid"

    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v8, "os"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string/jumbo v8, "version"

    sget-object v9, Lcom/tencent/gsdk/api/GSDKSystem;->m:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v7, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v8, "model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v8, "platapi"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v7, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 27
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 30
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 32
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 33
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 34
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 35
    new-array v2, v2, [B

    .line 37
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 43
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    invoke-static {v1}, Lcom/tencent/gsdk/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request quality controller result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v5, v1

    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 50
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request quality controller error, msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    :goto_2
    return-object v5
.end method

.method public static getInstance()Lcom/tencent/gsdk/api/GSDKSystem;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->P:Lcom/tencent/gsdk/api/GSDKSystem;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/gsdk/api/GSDKSystem;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/gsdk/api/GSDKSystem;->P:Lcom/tencent/gsdk/api/GSDKSystem;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-direct {v1}, Lcom/tencent/gsdk/api/GSDKSystem;-><init>()V

    sput-object v1, Lcom/tencent/gsdk/api/GSDKSystem;->P:Lcom/tencent/gsdk/api/GSDKSystem;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->P:Lcom/tencent/gsdk/api/GSDKSystem;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    const-string v1, "gsdk_prefs"

    const-string v2, "open_id"

    invoke-static {v0, v1, v2}, Lcom/tencent/gsdk/x0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "UNKNOWN"

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(IIZLjava/lang/String;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/tencent/gsdk/api/GSDKSystem$g;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/gsdk/api/GSDKSystem$g;-><init>(IIZLjava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x7

    .line 123
    iput p2, p1, Landroid/os/Message;->what:I

    .line 124
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object p2, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 85
    sput p1, Lcom/tencent/gsdk/api/GSDKSystem;->l:I

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    invoke-static {}, Lcom/tencent/gsdk/x0;->b()V

    .line 90
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    const-string v0, "gsdk_prefs"

    const-string v1, "open_id"

    invoke-static {p1, v0, v1, p2}, Lcom/tencent/gsdk/x0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/tencent/gsdk/x0;->a()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    sput p1, Lcom/tencent/gsdk/api/GSDKSystem;->l:I

    if-eqz p3, :cond_1

    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/tencent/gsdk/x0;->b()V

    .line 97
    sget-object p1, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    const-string v0, "gsdk_prefs"

    const-string v1, "open_id"

    invoke-static {p1, v0, v1, p2}, Lcom/tencent/gsdk/x0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/tencent/gsdk/x0;->a()V

    .line 99
    invoke-virtual {p0, p3}, Lcom/tencent/gsdk/api/GSDKSystem;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IZLjava/lang/String;ZZ)V
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/tencent/gsdk/api/GSDKSystem;->n:Z

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Lcom/tencent/gsdk/api/GSDKSystem$c;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p5

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/tencent/gsdk/api/GSDKSystem$c;-><init>(Lcom/tencent/gsdk/api/GSDKSystem;IZZLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/tencent/gsdk/r0;->a(ILandroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/tencent/gsdk/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    const-string v0, "Init CrashCatcher failed"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/tencent/gsdk/x0;->a(Landroid/content/Context;)V

    .line 16
    const-string v0, "gsdk_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    const-string v1, "create_time"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    :cond_2
    invoke-static {p3}, Lcom/tencent/gsdk/utils/Logger;->setDebug(Z)V

    .line 28
    invoke-static {p4, p2}, Lcom/tencent/gsdk/p;->a(ILjava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/tencent/gsdk/n;->a(Landroid/content/Context;)V

    .line 32
    invoke-static {p5}, Lcom/tencent/gsdk/r0;->a(I)V

    .line 34
    sget-boolean p2, Lcom/tencent/gsdk/api/GSDKSystem;->O:Z

    if-nez p2, :cond_3

    .line 35
    new-instance p2, Landroid/os/HandlerThread;

    const-string p4, "THREAD__100"

    invoke-direct {p2, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance p4, Lcom/tencent/gsdk/api/GSDKSystem$h;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p0, p2}, Lcom/tencent/gsdk/api/GSDKSystem$h;-><init>(Lcom/tencent/gsdk/api/GSDKSystem;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    .line 38
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sput-object p2, Lcom/tencent/gsdk/api/GSDKSystem;->z:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sput-object p2, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    .line 41
    invoke-static {p2}, Lcom/tencent/gsdk/s;->g(Landroid/content/Context;)V

    .line 43
    sget-object p2, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/gsdk/k;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {v3, p3}, Lcom/tencent/gsdk/y;->a(IZ)V

    .line 49
    sget-object p2, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/gsdk/z;->a(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Lcom/tencent/gsdk/e;->b(Landroid/content/Context;)V

    .line 53
    new-instance p1, Lcom/tencent/gsdk/m;

    iget-object p2, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    const-wide/32 p3, 0xea60

    invoke-direct {p1, p2, p3, p4}, Lcom/tencent/gsdk/m;-><init>(Landroid/os/Handler;J)V

    iput-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->f:Lcom/tencent/gsdk/m;

    .line 54
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    new-instance p2, Lcom/tencent/gsdk/api/GSDKSystem$b;

    invoke-direct {p2, p0}, Lcom/tencent/gsdk/api/GSDKSystem$b;-><init>(Lcom/tencent/gsdk/api/GSDKSystem;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 81
    sput-boolean p1, Lcom/tencent/gsdk/api/GSDKSystem;->O:Z

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/gsdk/api/GSDKSystem;->g()V

    return-void
.end method

.method public a(Lcom/tencent/gsdk/api/IEventObserver;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->j:Lcom/tencent/gsdk/api/IEventObserver;

    return-void
.end method

.method public a(Lcom/tencent/gsdk/api/a;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 116
    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/tencent/gsdk/api/a;Lcom/tencent/gsdk/api/b;)V
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    .line 338
    iget-boolean v0, v6, Lcom/tencent/gsdk/api/GSDKSystem;->g:Z

    const-string v2, "[Rsp]-1__GSDKEnd"

    if-nez v0, :cond_0

    .line 341
    invoke-static {v2}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v1, :cond_2a

    .line 345
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    if-eqz v0, :cond_1

    goto/16 :goto_1c

    .line 354
    :cond_1
    const-string v0, "[Rsp]0__GSDKEnd"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 356
    sput-boolean v7, Lcom/tencent/gsdk/api/GSDKSystem;->p:Z

    .line 357
    iget-object v0, v6, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 358
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 359
    iput-object v2, v6, Lcom/tencent/gsdk/api/GSDKSystem;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 361
    :cond_2
    invoke-static {}, Lcom/tencent/gsdk/o0;->a()Lcom/tencent/gsdk/o0$a;

    move-result-object v0

    .line 362
    iget-object v3, v6, Lcom/tencent/gsdk/api/GSDKSystem;->b:Lcom/tencent/gsdk/o0$a;

    invoke-static {v0, v3}, Lcom/tencent/gsdk/o0;->a(Lcom/tencent/gsdk/o0$a;Lcom/tencent/gsdk/o0$a;)Lcom/tencent/gsdk/o0$a;

    move-result-object v0

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 367
    sget-object v8, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 368
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 370
    :goto_0
    sget-object v9, Lcom/tencent/gsdk/api/GSDKPlatform;->mTag:Ljava/lang/String;

    .line 371
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 372
    sget-object v11, Lcom/tencent/gsdk/api/GSDKSystem;->y:Ljava/util/HashMap;

    if-eqz v11, :cond_4

    .line 373
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 374
    sget-object v11, Lcom/tencent/gsdk/api/GSDKSystem;->y:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 376
    :cond_4
    sget-object v11, Lcom/tencent/gsdk/api/GSDKSystem;->m:Ljava/lang/String;

    const-string/jumbo v12, "version"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v11, v6, Lcom/tencent/gsdk/api/GSDKSystem;->d:Ljava/lang/String;

    const-string/jumbo v12, "zoneid"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->h:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wsndpkt"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->d:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wrcvpkt"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->j:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wsnddrop"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->f:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wrcvdrop"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->i:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wsnderr"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->e:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wrcverr"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->p:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "msndpkt"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->l:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mrcvpkt"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->r:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "msnddrop"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->n:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mrcvdrop"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->q:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "msnderr"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-wide v11, v0, Lcom/tencent/gsdk/o0$a;->m:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "mrcverr"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    const-string v11, "lfps3"

    const-string v12, "lfps2"

    const-string v13, "lfps1"

    const-string v14, "fcntx0"

    const-string v15, "ftotal"

    const-string v2, "flight"

    const-string v7, "fheavy"

    move/from16 v16, v8

    const-string v8, "favg"

    const-string v6, "fmax"

    move-wide/from16 v17, v3

    const-string v3, "fmin"

    const-string v4, "-1"

    if-nez v0, :cond_5

    iget v0, v1, Lcom/tencent/gsdk/api/a;->e:I

    if-lez v0, :cond_5

    .line 393
    iget v0, v5, Lcom/tencent/gsdk/api/b;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget v0, v5, Lcom/tencent/gsdk/api/b;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget v0, v5, Lcom/tencent/gsdk/api/b;->a:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget v0, v5, Lcom/tencent/gsdk/api/b;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget v0, v5, Lcom/tencent/gsdk/api/b;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget v0, v5, Lcom/tencent/gsdk/api/b;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget v0, v5, Lcom/tencent/gsdk/api/b;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget v0, v5, Lcom/tencent/gsdk/api/b;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget v0, v5, Lcom/tencent/gsdk/api/b;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget v0, v5, Lcom/tencent/gsdk/api/b;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 404
    :cond_5
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v10, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-virtual {v10, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {v10, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {v10, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v10, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual {v10, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {v10, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :goto_1
    const-string/jumbo v0, "tag"

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    .line 417
    div-long v6, v17, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 418
    sget-wide v7, Lcom/tencent/gsdk/api/GSDKSystem;->q:J

    sub-long v7, v17, v7

    div-long/2addr v7, v2

    .line 419
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 420
    const-string v0, "etime"

    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v0, "time"

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    .line 422
    invoke-direct {v7, v1, v10}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/a;Ljava/util/HashMap;)V

    .line 424
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    const-wide/16 v17, -0x1

    if-nez v0, :cond_e

    iget v0, v1, Lcom/tencent/gsdk/api/a;->h:I

    if-lez v0, :cond_e

    .line 427
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v19, v17

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 430
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v8, v21, v19

    if-lez v8, :cond_6

    .line 431
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_2

    .line 435
    :cond_7
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_8

    .line 436
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 437
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    goto :goto_3

    :cond_8
    move-wide/from16 v21, v17

    move-wide/from16 v23, v21

    :goto_3
    const/4 v0, 0x0

    const-wide/16 v25, 0x0

    .line 439
    :goto_4
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 440
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    add-double v25, v25, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    const-wide/16 v25, 0x0

    .line 443
    :cond_a
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->E:Ljava/util/List;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const-wide/16 v11, 0x0

    .line 444
    :goto_5
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 445
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->E:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const-wide/16 v11, 0x0

    :cond_c
    move/from16 v8, v16

    if-eqz v16, :cond_d

    int-to-double v13, v8

    div-double v25, v25, v13

    .line 451
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->round(D)J

    move-result-wide v25

    div-double/2addr v11, v13

    .line 452
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    goto :goto_6

    :cond_d
    const-wide/16 v11, 0x0

    const-wide/16 v25, 0x0

    .line 454
    :goto_6
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mem"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "availmem"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "max_mem"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "start_mem"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "end_mem"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    move/from16 v8, v16

    .line 460
    const-string v0, "mem"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v0, "availmem"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v0, "max_mem"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v0, "start_mem"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "end_mem"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_7
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    if-nez v0, :cond_1c

    iget v0, v1, Lcom/tencent/gsdk/api/a;->g:I

    if-lez v0, :cond_1c

    .line 469
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    const-wide/16 v11, 0x0

    .line 470
    :goto_8
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 471
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    const-wide/16 v11, 0x0

    .line 474
    :cond_10
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const-wide/16 v27, 0x0

    .line 475
    :goto_9
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 476
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    add-double v27, v27, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    const-wide/16 v27, 0x0

    :cond_12
    if-eqz v8, :cond_13

    int-to-double v13, v8

    div-double/2addr v11, v13

    .line 482
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    div-double v27, v27, v13

    .line 483
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    goto :goto_a

    :cond_13
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    .line 487
    :goto_a
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_16

    .line 488
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 489
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v21, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 490
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    cmp-long v8, v23, v19

    if-lez v8, :cond_14

    .line 491
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 493
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    add-long v21, v21, v23

    goto :goto_b

    .line 495
    :cond_15
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v8, v6

    int-to-long v5, v0

    div-long v21, v21, v5

    goto :goto_c

    :cond_16
    move-object v8, v6

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    .line 499
    :goto_c
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    .line 500
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 501
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v23, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 502
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v15, v25, v5

    if-lez v15, :cond_17

    .line 503
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 505
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    add-long v23, v23, v25

    goto :goto_d

    .line 507
    :cond_18
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-wide/from16 v25, v5

    int-to-long v5, v0

    div-long v23, v23, v5

    move-wide/from16 v5, v25

    goto :goto_e

    :cond_19
    move-wide/from16 v5, v17

    move-wide/from16 v23, v5

    .line 512
    :goto_e
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 514
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v16, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 515
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    add-long v16, v16, v25

    goto :goto_f

    .line 517
    :cond_1a
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v15, v3

    int-to-long v2, v0

    div-long v17, v16, v2

    goto :goto_10

    :cond_1b
    move-object v15, v3

    .line 519
    :goto_10
    invoke-direct {v7, v11, v12}, Lcom/tencent/gsdk/api/GSDKSystem;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cpu"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-direct {v7, v13, v14}, Lcom/tencent/gsdk/api/GSDKSystem;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "totcpu"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cpu_temp_max"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cpu_temp_avg"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gpu_temp_avg"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gpu_temp_max"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gpu"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1c
    move-object v15, v3

    move-object v8, v6

    .line 527
    const-string v0, "cpu"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v0, "totcpu"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v0, "cpu_temp_max"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v0, "cpu_temp_avg"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v0, "gpu_temp_avg"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v0, "gpu_temp_max"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v0, "gpu"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :goto_11
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    const-string v2, "max_battery_temp"

    if-nez v0, :cond_1f

    iget v0, v1, Lcom/tencent/gsdk/api/a;->i:I

    if-lez v0, :cond_1f

    .line 539
    invoke-static {}, Lcom/tencent/gsdk/k;->a()I

    move-result v0

    .line 540
    sget v3, Lcom/tencent/gsdk/api/GSDKSystem;->t:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1d

    if-eq v0, v5, :cond_1d

    sub-int v5, v3, v0

    .line 543
    :cond_1d
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "battery"

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget v3, Lcom/tencent/gsdk/api/GSDKSystem;->t:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "start_battery"

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "end_battery"

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/gsdk/y0;->b(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bt"

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static {}, Lcom/tencent/gsdk/k;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bs"

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, v7, Lcom/tencent/gsdk/api/GSDKSystem;->h:Lcom/tencent/gsdk/api/GSDKSystem$i;

    if-eqz v0, :cond_1e

    .line 551
    invoke-static {v0}, Lcom/tencent/gsdk/api/GSDKSystem$i;->a(Lcom/tencent/gsdk/api/GSDKSystem$i;)Lcom/tencent/gsdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/i;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 552
    iput-object v0, v7, Lcom/tencent/gsdk/api/GSDKSystem;->h:Lcom/tencent/gsdk/api/GSDKSystem$i;

    goto :goto_12

    .line 554
    :cond_1e
    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 557
    :cond_1f
    const-string v0, "battery"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v0, "start_battery"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v0, "end_battery"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v0, "bt"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v0, "bs"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :goto_12
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    if-nez v0, :cond_20

    iget v0, v1, Lcom/tencent/gsdk/api/a;->j:I

    if-lez v0, :cond_20

    .line 567
    invoke-static {}, Lcom/tencent/gsdk/y0;->j()J

    move-result-wide v2

    sget-wide v5, Lcom/tencent/gsdk/api/GSDKSystem;->r:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x400

    div-long/2addr v2, v5

    .line 568
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "netflow"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 570
    :cond_20
    const-string v0, "netflow"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :goto_13
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    const-string/jumbo v2, "wifi_speed"

    if-nez v0, :cond_25

    iget v0, v1, Lcom/tencent/gsdk/api/a;->q:I

    if-lez v0, :cond_25

    .line 574
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 576
    :goto_14
    sget-object v5, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_21

    int-to-long v5, v3

    .line 577
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v5, v11

    long-to-int v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 579
    :cond_21
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v3, v0

    sput v3, Lcom/tencent/gsdk/api/GSDKSystem;->x:I

    .line 581
    :cond_22
    sget v0, Lcom/tencent/gsdk/api/GSDKSystem;->u:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "devices"

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget v0, Lcom/tencent/gsdk/api/GSDKSystem;->v:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wifi_num"

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget v0, Lcom/tencent/gsdk/api/GSDKSystem;->w:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wifi_rssi"

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    const-wide/16 v13, 0x0

    .line 586
    :goto_15
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 587
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v13, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 589
    :cond_23
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v5, v0

    div-long/2addr v13, v5

    .line 590
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 592
    :cond_24
    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :goto_16
    sget v0, Lcom/tencent/gsdk/api/GSDKSystem;->x:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gate_delay"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 596
    :cond_25
    const-string v0, "devices"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v0, "wifi_num"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v0, "wifi_rssi"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v0, "gate_delay"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :goto_17
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 605
    :goto_18
    sget-object v3, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    int-to-long v2, v2

    .line 606
    sget-object v5, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v2, v5

    long-to-int v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 608
    :cond_26
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v2, v0

    .line 609
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "signal_level"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 611
    :cond_27
    const-string v0, "signal_level"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :goto_19
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xg"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/tencent/gsdk/api/GSDKPlatform;->mRoomIp:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 618
    const-string v2, "roomip"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 620
    :cond_28
    const-string v0, "roomip"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :goto_1a
    iget v0, v1, Lcom/tencent/gsdk/api/a;->a:I

    if-nez v0, :cond_29

    .line 625
    iget-object v0, v1, Lcom/tencent/gsdk/api/a;->c:Ljava/lang/String;

    const-string v2, "speedip"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 627
    :cond_29
    const-string v0, "speedip"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :goto_1b
    sget-object v0, Lcom/tencent/gsdk/z;->e:Ljava/lang/String;

    const-string v2, "gpu_model"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/tencent/gsdk/z;->c:Ljava/lang/String;

    const-string v2, "cpu_model"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/tencent/gsdk/z;->d:Ljava/lang/String;

    const-string v2, "cpu_core"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/tencent/gsdk/z;->b:Ljava/lang/String;

    const-string v2, "cpu_freq"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "brand"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/tencent/gsdk/z;->a:Ljava/lang/String;

    const-string v2, "resolution"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/gsdk/api/GSDKSystem;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/y0;->c(Landroid/content/Context;)J

    move-result-wide v2

    .line 645
    sget-object v0, Lcom/tencent/gsdk/z;->g:Ljava/lang/String;

    const-string/jumbo v4, "total_storage"

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "free_storage"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/tencent/gsdk/z;->f:Ljava/lang/String;

    const-string/jumbo v2, "totalmem"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/gsdk/p0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ldns"

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v0, "gsdk_report_1"

    invoke-static {v0, v10}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v15

    move-object v4, v8

    move-object/from16 v5, p2

    .line 652
    invoke-direct/range {v0 .. v5}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/gsdk/api/b;)V

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/tencent/gsdk/api/GSDKSystem;->e()V

    const/4 v0, 0x0

    .line 657
    iput-boolean v0, v7, Lcom/tencent/gsdk/api/GSDKSystem;->g:Z

    return-void

    :cond_2a
    :goto_1c
    move-object v7, v6

    .line 658
    invoke-static {v2}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/gsdk/api/b;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 100
    new-instance v13, Lcom/tencent/gsdk/api/b;

    const/4 v11, 0x0

    const-string v12, "0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/tencent/gsdk/api/b;-><init>(FIIIIIIIIILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v13, Lcom/tencent/gsdk/api/b;

    iget v15, v1, Lcom/tencent/gsdk/api/b;->a:F

    iget v2, v1, Lcom/tencent/gsdk/api/b;->b:I

    iget v3, v1, Lcom/tencent/gsdk/api/b;->c:I

    iget v4, v1, Lcom/tencent/gsdk/api/b;->d:I

    iget v5, v1, Lcom/tencent/gsdk/api/b;->e:I

    iget v6, v1, Lcom/tencent/gsdk/api/b;->f:I

    iget v7, v1, Lcom/tencent/gsdk/api/b;->g:I

    iget v8, v1, Lcom/tencent/gsdk/api/b;->h:I

    iget v9, v1, Lcom/tencent/gsdk/api/b;->i:I

    iget v10, v1, Lcom/tencent/gsdk/api/b;->j:I

    iget-object v1, v1, Lcom/tencent/gsdk/api/b;->k:Ljava/lang/String;

    move-object v14, v13

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v1

    invoke-direct/range {v14 .. v25}, Lcom/tencent/gsdk/api/b;-><init>(FIIIIIIIIILjava/lang/String;)V

    .line 105
    :goto_0
    iget-object v1, v0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-nez v1, :cond_1

    return-void

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 109
    iput v2, v1, Landroid/os/Message;->what:I

    .line 110
    iput-object v13, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget-object v2, v0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executeGSDKAddCustomParamsInGame:"

    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 132
    iput v1, v0, Landroid/os/Message;->what:I

    .line 133
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/tencent/gsdk/api/a;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executeGSDKAddCustomParamsInLogin:"

    .line 12
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/tencent/gsdk/api/GSDKSystem;->n:Z

    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Lcom/tencent/gsdk/api/GSDKSystem$d;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem$d;-><init>(Lcom/tencent/gsdk/api/GSDKSystem;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/tencent/gsdk/api/GSDKSystem$j;

    invoke-direct {v0, p1}, Lcom/tencent/gsdk/api/GSDKSystem$j;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x0

    .line 7
    iput v1, p1, Landroid/os/Message;->what:I

    .line 8
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->f:Lcom/tencent/gsdk/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/gsdk/m;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/gsdk/api/GSDKSystem;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iget-object v1, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public i()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->k:Landroid/content/Context;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v0}, Lcom/tencent/gsdk/w0;->d()I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/n;->a()Lcom/tencent/gsdk/n$a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/tencent/gsdk/n$a;->a:Lcom/tencent/gsdk/a;

    check-cast v1, Lcom/tencent/gsdk/h0;

    .line 3
    iget v2, v0, Lcom/tencent/gsdk/n$a;->b:I

    .line 8
    const-string v3, "login"

    invoke-direct {p0, v3, v0}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;Lcom/tencent/gsdk/n$a;)V

    .line 10
    iget-object v0, v1, Lcom/tencent/gsdk/h0;->t:Ljava/lang/String;

    iget-object v3, v1, Lcom/tencent/gsdk/h0;->u:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tencent/gsdk/u0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->f:Lcom/tencent/gsdk/m;

    iget v3, v1, Lcom/tencent/gsdk/h0;->s:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/gsdk/m;->a(J)V

    .line 14
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->a:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/gsdk/api/GSDKSystem$e;

    invoke-direct {v3, p0, v1}, Lcom/tencent/gsdk/api/GSDKSystem$e;-><init>(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/h0;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    if-eq v0, v2, :cond_0

    .line 25
    const-string v3, "[Rsp]-1__GSDKInit"

    invoke-static {v3}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Rsp]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/tencent/gsdk/h0;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/gsdk/h0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_GSDKInit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 30
    :goto_0
    iget-boolean v3, v1, Lcom/tencent/gsdk/h0;->d:Z

    sput-boolean v3, Lcom/tencent/gsdk/api/GSDKSystem;->n:Z

    .line 31
    iget-boolean v3, v1, Lcom/tencent/gsdk/h0;->e:Z

    sput-boolean v3, Lcom/tencent/gsdk/api/GSDKSystem;->o:Z

    .line 33
    iget-boolean v3, v1, Lcom/tencent/gsdk/h0;->f:Z

    if-nez v3, :cond_1

    return-void

    .line 37
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v4, v1, Lcom/tencent/gsdk/h0;->g:Ljava/lang/String;

    iget v5, v1, Lcom/tencent/gsdk/h0;->h:I

    invoke-direct {p0, v4, v5}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 39
    iget-object v5, v1, Lcom/tencent/gsdk/h0;->i:Ljava/lang/String;

    iget v6, v1, Lcom/tencent/gsdk/h0;->j:I

    invoke-direct {p0, v5, v6}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 40
    iget-object v6, v1, Lcom/tencent/gsdk/h0;->k:Ljava/lang/String;

    iget v7, v1, Lcom/tencent/gsdk/h0;->l:I

    invoke-direct {p0, v6, v7}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 41
    iget-object v7, v1, Lcom/tencent/gsdk/h0;->m:Ljava/lang/String;

    iget v8, v1, Lcom/tencent/gsdk/h0;->n:I

    invoke-direct {p0, v7, v8}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 42
    iget-object v8, v1, Lcom/tencent/gsdk/h0;->o:Ljava/lang/String;

    iget v9, v1, Lcom/tencent/gsdk/h0;->p:I

    invoke-direct {p0, v8, v9}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 43
    iget-object v9, v1, Lcom/tencent/gsdk/h0;->q:Ljava/lang/String;

    iget v1, v1, Lcom/tencent/gsdk/h0;->r:I

    invoke-direct {p0, v9, v1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v9, "d1"

    invoke-virtual {v3, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v4, "d2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v4, "d3"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v4, "d4"

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "d5"

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "d6"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isCache"

    if-eq v0, v2, :cond_2

    .line 51
    const-string v0, "1"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_2
    const-string v0, "0"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_1
    const-string v0, "gsdk_report_con"

    invoke-static {v0, v3}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem;->i:Lcom/tencent/gsdk/w0;

    invoke-virtual {v0}, Lcom/tencent/gsdk/w0;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    const-string/jumbo v0, "{\"cping\":\"-1\",\"clostpkg\":\"-1\",\"avg_ping\":\"-1\",\"lostpkgpct\":\"-1\"}"

    return-object v0
.end method
