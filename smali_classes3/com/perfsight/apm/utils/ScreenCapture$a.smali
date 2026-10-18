.class Lcom/perfsight/apm/utils/ScreenCapture$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/utils/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/perfsight/apm/utils/ScreenCapture$a;->a:I

    iput p2, p0, Lcom/perfsight/apm/utils/ScreenCapture$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/perfsight/apm/utils/ScreenCapture$a;)I
    .locals 0

    iget p0, p0, Lcom/perfsight/apm/utils/ScreenCapture$a;->b:I

    return p0
.end method

.method static synthetic b(Lcom/perfsight/apm/utils/ScreenCapture$a;)I
    .locals 0

    iget p0, p0, Lcom/perfsight/apm/utils/ScreenCapture$a;->a:I

    return p0
.end method
