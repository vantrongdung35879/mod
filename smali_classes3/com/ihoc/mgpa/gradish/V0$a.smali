.class Lcom/ihoc/mgpa/gradish/V0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/V0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalStatusChanged(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system thermal status changed to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/gradish/V0;->a(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 5
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/gradish/V0;->a(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, v1}, Lcom/ihoc/mgpa/gradish/V0;->a(II)V

    :goto_0
    return-void
.end method
