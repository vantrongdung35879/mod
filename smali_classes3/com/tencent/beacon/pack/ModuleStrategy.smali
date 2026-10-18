.class public final Lcom/tencent/beacon/pack/ModuleStrategy;
.super Lcom/tencent/beacon/pack/AbstractJceStruct;
.source "ModuleStrategy.java"


# static fields
.field static cache_detail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_preventEventCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_sampleEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static cache_sms:Ljava/lang/Object;


# instance fields
.field public detail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mId:B

.field public onOff:B

.field public preventEventCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sampleEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sms:Ljava/lang/Object;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    .line 3
    iput-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->onOff:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    .line 6
    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sms:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(BBLjava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    .line 17
    iput-byte p1, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    .line 18
    iput-byte p2, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->onOff:B

    .line 19
    iput-object p3, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->url:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    .line 21
    iput-object p5, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    .line 22
    iput-object p6, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sms:Ljava/lang/Object;

    .line 23
    iput-object p7, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/tencent/beacon/pack/a;)V
    .locals 5

    .line 1
    iget-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    .line 2
    iget-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->onOff:B

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->onOff:B

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0, v2}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->url:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_detail:Ljava/util/Map;

    const-string v3, ""

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_detail:Ljava/util/Map;

    .line 6
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_detail:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v4, v2}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    .line 8
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_preventEventCode:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_preventEventCode:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_preventEventCode:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    .line 12
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_sms:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sms:Ljava/lang/Object;

    .line 14
    :cond_2
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_sampleEvent:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_sampleEvent:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    sget-object v0, Lcom/tencent/beacon/pack/ModuleStrategy;->cache_sampleEvent:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/tencent/beacon/pack/b;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(BI)V

    .line 2
    iget-byte v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->onOff:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(BI)V

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->url:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Map;I)V

    .line 5
    iget-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Collection;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sms:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/Object;I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Collection;I)V

    :cond_2
    return-void
.end method
