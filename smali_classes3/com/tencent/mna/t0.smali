.class public Lcom/tencent/mna/t0;
.super Ljava/lang/Object;
.source "GameSetting.java"


# static fields
.field public static volatile a:I = -0x1

.field public static volatile b:Z = false

.field public static volatile c:Ljava/lang/String; = ""

.field public static volatile d:Ljava/lang/String; = ""

.field public static volatile e:Ljava/lang/String; = ""

.field public static volatile f:J = 0x0L

.field public static volatile g:J = 0x0L

.field public static volatile h:I = 0x3

.field public static volatile i:Z = true

.field public static volatile j:Z = false

.field public static volatile k:Ljava/lang/String; = "0.0.0.0"

.field public static volatile l:I = 0x0

.field private static volatile m:Ljava/lang/String; = "0.0.0.0"

.field private static volatile n:I

.field private static volatile o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Z

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:I

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Z

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/t0;->o:Ljava/util/List;

    .line 2
    const-string v0, "0.0.0.0"

    sput-object v0, Lcom/tencent/mna/t0;->p:Ljava/lang/String;

    .line 5
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/t0;->q:Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    sput-boolean v1, Lcom/tencent/mna/t0;->r:Z

    .line 7
    sput-object v0, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    .line 8
    sput-object v0, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/tencent/mna/t0;->y:Z

    .line 14
    sput v0, Lcom/tencent/mna/t0;->z:I

    return-void
.end method

.method public static a()V
    .locals 7

    .line 3
    const-string v0, ""

    const-string v1, "0.0.0.0"

    :try_start_0
    sget-wide v2, Lcom/tencent/mna/t0;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 4
    sput-wide v4, Lcom/tencent/mna/t0;->f:J

    .line 5
    sput-object v1, Lcom/tencent/mna/t0;->p:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/tencent/mna/t0;->e:Ljava/lang/String;

    .line 8
    sput-wide v4, Lcom/tencent/mna/t0;->g:J

    .line 9
    sput-object v1, Lcom/tencent/mna/t0;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    sput v0, Lcom/tencent/mna/t0;->n:I

    .line 11
    sput-object v1, Lcom/tencent/mna/t0;->k:Ljava/lang/String;

    .line 12
    sput v0, Lcom/tencent/mna/t0;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 13
    sput p0, Lcom/tencent/mna/t0;->z:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/tencent/mna/t0;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/tencent/mna/t0;->o:Ljava/util/List;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/mna/t0;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    .line 2
    sput p0, Lcom/tencent/mna/t0;->n:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/mna/t0;->m:Ljava/lang/String;

    return-void
.end method

.method public static c()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/t0;->z:I

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/t0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/mna/t0;->o:Ljava/util/List;

    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/t0;->n:I

    return v0
.end method
