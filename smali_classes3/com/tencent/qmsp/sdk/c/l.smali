.class public Lcom/tencent/qmsp/sdk/c/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/c/c;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/qmsp/sdk/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/l;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qmsp/sdk/c/e;)V
    .locals 2

    invoke-interface {p1}, Lcom/tencent/qmsp/sdk/c/e;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getApplicationContext()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimeVersion()I
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public queryRuntimeInterface(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/c/e;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qmsp/sdk/c/e;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/tencent/qmsp/sdk/c/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method
