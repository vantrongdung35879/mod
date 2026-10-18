.class public Lcom/tencent/wetest/U3DAutomation$MScreen;
.super Ljava/lang/Object;
.source "U3DAutomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wetest/U3DAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MScreen"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:F

.field public y:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->width:I

    .line 39
    iput v0, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->height:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->x:F

    .line 41
    iput v0, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->y:F

    return-void
.end method

.method constructor <init>(IIFF)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->width:I

    .line 46
    iput p2, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->height:I

    .line 47
    iput p3, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->x:F

    .line 48
    iput p4, p0, Lcom/tencent/wetest/U3DAutomation$MScreen;->y:F

    return-void
.end method
