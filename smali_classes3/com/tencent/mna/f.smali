.class public Lcom/tencent/mna/f;
.super Ljava/lang/Object;
.source "AccPlatInfo.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/mna/f;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    const/16 v1, 0x3e8

    .line 8
    iput v1, p0, Lcom/tencent/mna/f;->g:I

    .line 9
    const-string v2, "default"

    iput-object v2, p0, Lcom/tencent/mna/f;->h:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/tencent/mna/f;->i:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/mna/f;->j:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/tencent/mna/f;->k:I

    .line 15
    iput p1, p0, Lcom/tencent/mna/f;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    .line 25
    const-string v1, "default"

    iput-object v1, p0, Lcom/tencent/mna/f;->i:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/tencent/mna/f;->j:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 27
    iput v0, p0, Lcom/tencent/mna/f;->k:I

    .line 34
    iput p1, p0, Lcom/tencent/mna/f;->a:I

    .line 35
    iput-object p2, p0, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/tencent/mna/f;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    .line 39
    iput p6, p0, Lcom/tencent/mna/f;->g:I

    .line 40
    iput-object p7, p0, Lcom/tencent/mna/f;->h:Ljava/lang/String;

    return-void
.end method
