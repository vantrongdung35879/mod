.class public Lcom/tencent/tme/live/room/PlayerQualitySetView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/room/PlayerQualitySetView;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/room/PlayerQualitySetView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/PlayerQualitySetView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView$b;->a:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView$b;->a:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
