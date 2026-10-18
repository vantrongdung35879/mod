.class Lcom/tencent/mna/h$b;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Lcom/tencent/mna/StartSpeedRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/MNAObserver;

.field final synthetic b:Lcom/tencent/mna/StartSpeedRet;


# direct methods
.method constructor <init>(Lcom/tencent/mna/MNAObserver;Lcom/tencent/mna/StartSpeedRet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$b;->a:Lcom/tencent/mna/MNAObserver;

    iput-object p2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/h$b;->a:Lcom/tencent/mna/MNAObserver;

    const-string v1, "_"

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget v3, v2, Lcom/tencent/mna/StartSpeedRet;->htype:I

    iget v4, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v2, v2, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v2}, Lcom/tencent/mna/MNAObserver;->OnStartSpeedNotify(IILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnStartSpeedNotify:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget v2, v2, Lcom/tencent/mna/StartSpeedRet;->htype:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget v2, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget-object v2, v2, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;)I

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnStartSpeedNotify: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget v2, v2, Lcom/tencent/mna/StartSpeedRet;->htype:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget v2, v2, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/h$b;->b:Lcom/tencent/mna/StartSpeedRet;

    iget-object v1, v1, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    const-string v0, "OnStartSpeedNotify not allow"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
