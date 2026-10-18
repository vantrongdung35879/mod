.class public Lcom/tencent/mna/d3$a;
.super Ljava/lang/Object;
.source "RouterQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/d3$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/tencent/mna/d3$a;->b:I

    .line 7
    const-string/jumbo v2, "\u901a\u7545"

    iput-object v2, p0, Lcom/tencent/mna/d3$a;->c:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tencent/mna/d3$a;->d:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/tencent/mna/d3$a;->e:I

    return-void
.end method
