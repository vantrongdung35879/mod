.class public Lcom/tencent/tme/live/room/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/room/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/room/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/e$a;->a:Lcom/tencent/tme/live/room/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/room/e$a;->a:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/room/e;->o:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
