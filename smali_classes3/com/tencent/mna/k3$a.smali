.class public Lcom/tencent/mna/k3$a;
.super Ljava/lang/Object;
.source "SpeedPrediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x3f70a80000000000L    # -1003.0

    .line 2
    iput-wide v0, p0, Lcom/tencent/mna/k3$a;->a:D

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/k3$a;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/mna/k3$a;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/k3$a;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/mna/k3$a;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tencent/mna/k3$a;->f:Ljava/lang/String;

    return-void
.end method
