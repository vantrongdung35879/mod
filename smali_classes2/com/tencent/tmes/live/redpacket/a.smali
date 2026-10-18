.class public Lcom/tencent/tmes/live/redpacket/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:F

.field public c:F

.field public d:F

.field public e:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmes/live/redpacket/a;->b:F

    iput v0, p0, Lcom/tencent/tmes/live/redpacket/a;->c:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tencent/tmes/live/redpacket/a;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tmes/live/redpacket/a;Z)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return p1
.end method
