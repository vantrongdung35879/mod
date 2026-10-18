.class public final Lcom/tencent/qimei/x/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/tencent/qimei/x/d;->c:J

    .line 29
    iput-boolean p1, p0, Lcom/tencent/qimei/x/d;->a:Z

    .line 30
    iput-object p2, p0, Lcom/tencent/qimei/x/d;->e:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/tencent/qimei/x/d;->f:I

    .line 32
    iput-object p4, p0, Lcom/tencent/qimei/x/d;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/qimei/x/d;->f:I

    .line 6
    iput-boolean p1, p0, Lcom/tencent/qimei/x/d;->a:Z

    .line 7
    iput-object p2, p0, Lcom/tencent/qimei/x/d;->b:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lcom/tencent/qimei/x/d;->c:J

    return-void
.end method
