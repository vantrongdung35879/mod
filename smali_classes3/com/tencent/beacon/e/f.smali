.class Lcom/tencent/beacon/e/f;
.super Ljava/lang/Object;
.source "StrategyHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/e/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/e/h;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/e/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/e/f;->a:Lcom/tencent/beacon/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/e/f;->a:Lcom/tencent/beacon/e/h;

    invoke-static {v0}, Lcom/tencent/beacon/e/h;->a(Lcom/tencent/beacon/e/h;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/e/f;->a:Lcom/tencent/beacon/e/h;

    invoke-static {v0}, Lcom/tencent/beacon/e/h;->a(Lcom/tencent/beacon/e/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/e/h;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
