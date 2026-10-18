.class Lcom/tencent/mna/base/utils/b$c;
.super Landroid/telephony/PhoneStateListener;
.source "MobileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/base/utils/b$c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/utils/b$c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/mna/base/utils/b$c;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 2
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/mna/base/utils/b$c$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/base/utils/b$c$a;-><init>(Lcom/tencent/mna/base/utils/b$c;Ljava/util/List;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 3
    new-instance v0, Lcom/tencent/mna/base/utils/b$c$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/base/utils/b$c$b;-><init>(Lcom/tencent/mna/base/utils/b$c;Landroid/telephony/SignalStrength;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method
