.class final Lcom/tencent/beacon/a/c/i;
.super Ljava/lang/Object;
.source "QimeiWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/c/j;->a(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/c/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/beacon/a/c/i;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/beacon/a/c/i;->c:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/a/c/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "QimeiWrapper"

    const-string v2, "async getQimeiWithAppkey  appkey is %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/a/c/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/c/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/beacon/a/c/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/a/c/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/c/i;->c:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-interface {v0, v1}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method
