.class public Lcom/perfsight/apm/apm/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/apm/e$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/perfsight/apm/apm/e;


# instance fields
.field private b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfsight/apm/apm/e;

    invoke-direct {v0}, Lcom/perfsight/apm/apm/e;-><init>()V

    sput-object v0, Lcom/perfsight/apm/apm/e;->a:Lcom/perfsight/apm/apm/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/e;->b:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/e;->c:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/e;->d:Z

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/e;->e:Z

    return-void
.end method

.method public static e()Lcom/perfsight/apm/apm/e;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/apm/e;->a:Lcom/perfsight/apm/apm/e;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 3

    invoke-static {}, Lcom/perfsight/apm/apm/e$a;->values()[Lcom/perfsight/apm/apm/e$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetLocalStrategy call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    if-ltz p1, :cond_5

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, v0, p1

    sget-object v1, Lcom/perfsight/apm/apm/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/perfsight/apm/apm/e;->b:Z

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/perfsight/apm/apm/e;->e:Z

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lcom/perfsight/apm/apm/e;->d:Z

    goto :goto_0

    :cond_4
    iput-boolean p2, p0, Lcom/perfsight/apm/apm/e;->c:Z

    :goto_0
    invoke-static {p1, p2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setLocalStrategy(IZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/e;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/e;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/e;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/apm/e;->b:Z

    return v0
.end method
