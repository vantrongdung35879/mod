.class public Lcom/tencent/tme/live/m/h$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/m/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/h$c;->a:Lcom/tencent/tme/live/m/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/m/h$c;->a:Lcom/tencent/tme/live/m/h;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
