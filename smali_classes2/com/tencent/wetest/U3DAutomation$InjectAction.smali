.class Lcom/tencent/wetest/U3DAutomation$InjectAction;
.super Ljava/lang/Object;
.source "U3DAutomation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wetest/U3DAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectAction"
.end annotation


# instance fields
.field private event:Landroid/view/MotionEvent;

.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->event:Landroid/view/MotionEvent;

    .line 59
    iput-object p2, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 66
    :goto_0
    sget-boolean v0, Lcom/tencent/wetest/U3DAutomation;->handleForward:Z

    const/4 v1, 0x1

    const-string v2, "wetest"

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Lcom/tencent/wetest/U3DAutomation;->access$0(Z)V

    .line 68
    iget-object v0, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "touch fail."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-static {v1}, Lcom/tencent/wetest/U3DAutomation;->access$0(Z)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->access$1()Z

    move-result v0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getForward = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 83
    sput-boolean v1, Lcom/tencent/wetest/U3DAutomation;->handleForward:Z

    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/wetest/U3DAutomation$InjectAction;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
