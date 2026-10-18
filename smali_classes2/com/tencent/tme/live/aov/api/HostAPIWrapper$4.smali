.class Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->callUnity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

.field public final synthetic val$resultCode:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    iput p2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {v0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$600(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;->val$resultCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
