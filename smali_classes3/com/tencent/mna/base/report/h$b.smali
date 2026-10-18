.class Lcom/tencent/mna/base/report/h$b;
.super Ljava/lang/Object;
.source "TdmReportChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/report/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/tencent/mna/base/report/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/mna/base/report/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mna/base/report/h;-><init>(Lcom/tencent/mna/base/report/h$a;)V

    sput-object v0, Lcom/tencent/mna/base/report/h$b;->a:Lcom/tencent/mna/base/report/h;

    return-void
.end method

.method static synthetic a()Lcom/tencent/mna/base/report/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/report/h$b;->a:Lcom/tencent/mna/base/report/h;

    return-object v0
.end method
