.class Lcom/tencent/beacon/d/a/b;
.super Ljava/lang/Object;
.source "LifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/d/a/c;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tencent/beacon/d/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/d/a/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/d/a/b;->b:Lcom/tencent/beacon/d/a/c;

    iput-object p2, p0, Lcom/tencent/beacon/d/a/b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/beacon/d/c;

    iget-object v1, p0, Lcom/tencent/beacon/d/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/beacon/d/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/beacon/d/c;->a()V

    return-void
.end method
