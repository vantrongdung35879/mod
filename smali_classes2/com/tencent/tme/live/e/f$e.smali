.class public Lcom/tencent/tme/live/e/f$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/f;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/f$e;->a:Lcom/tencent/tme/live/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/f$e;->a:Lcom/tencent/tme/live/e/f;

    invoke-static {v0}, Lcom/tencent/tme/live/e/f;->a(Lcom/tencent/tme/live/e/f;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/f$e;->a:Lcom/tencent/tme/live/e/f;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/e/f;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "checkTimeOutRunnable error : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MinaManager"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
