.class public Lcom/tencent/mna/c3$a;
.super Ljava/lang/Object;
.source "RouterProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x67

    .line 14
    iput v0, p0, Lcom/tencent/mna/c3$a;->a:I

    .line 15
    iput v0, p0, Lcom/tencent/mna/c3$a;->b:I

    .line 16
    iput v0, p0, Lcom/tencent/mna/c3$a;->c:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/c3$a;->e:Ljava/lang/String;

    return-void
.end method
