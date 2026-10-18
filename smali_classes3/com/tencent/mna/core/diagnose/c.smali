.class final Lcom/tencent/mna/core/diagnose/c;
.super Ljava/lang/Object;
.source "DiagnoseSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/core/diagnose/c$a;
    }
.end annotation


# direct methods
.method static a(ILcom/tencent/mna/core/diagnose/c$a;)Z
    .locals 0

    .line 1
    iget p1, p1, Lcom/tencent/mna/core/diagnose/c$a;->mCode:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
