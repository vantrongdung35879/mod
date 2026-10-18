.class public Lcom/tencent/tme/live/t1/a;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lcom/tencent/tme/live/t1/a;

.field public static final d:Lcom/tencent/tme/live/t1/a;

.field public static final e:Lcom/tencent/tme/live/t1/a;

.field public static final f:Lcom/tencent/tme/live/t1/a;

.field public static final g:Lcom/tencent/tme/live/t1/a;


# instance fields
.field public transient a:I

.field public transient b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/t1/a;

    const v1, 0x9c40

    const-string v2, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/t1/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/t1/a;->c:Lcom/tencent/tme/live/t1/a;

    new-instance v0, Lcom/tencent/tme/live/t1/a;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/t1/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/t1/a;->d:Lcom/tencent/tme/live/t1/a;

    new-instance v0, Lcom/tencent/tme/live/t1/a;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/t1/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/t1/a;->e:Lcom/tencent/tme/live/t1/a;

    new-instance v0, Lcom/tencent/tme/live/t1/a;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/t1/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/t1/a;->f:Lcom/tencent/tme/live/t1/a;

    new-instance v0, Lcom/tencent/tme/live/t1/a;

    const/4 v1, 0x0

    const-string v2, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/t1/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/t1/a;->g:Lcom/tencent/tme/live/t1/a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tme/live/t1/a;->a:I

    iput-object p2, p0, Lcom/tencent/tme/live/t1/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/t1/a;)Z
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/t1/a;->a:I

    iget p1, p1, Lcom/tencent/tme/live/t1/a;->a:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/t1/a;->b:Ljava/lang/String;

    return-object v0
.end method
