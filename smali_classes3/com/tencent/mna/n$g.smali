.class public Lcom/tencent/mna/n$g;
.super Ljava/lang/Object;
.source "CachedTouchFileUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/n$g;->e:Ljava/lang/String;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/tencent/mna/n$g;->f:I

    .line 10
    iput p1, p0, Lcom/tencent/mna/n$g;->a:I

    .line 11
    iput-boolean p2, p0, Lcom/tencent/mna/n$g;->b:Z

    .line 12
    iput-object p3, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/tencent/mna/n$g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/tencent/mna/n$g;->a:I

    .line 32
    iput-boolean p2, p0, Lcom/tencent/mna/n$g;->b:Z

    .line 33
    iput-object p3, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/tencent/mna/n$g;->d:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/tencent/mna/n$g;->e:Ljava/lang/String;

    .line 36
    iput p6, p0, Lcom/tencent/mna/n$g;->f:I

    return-void
.end method
