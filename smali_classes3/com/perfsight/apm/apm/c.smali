.class public Lcom/perfsight/apm/apm/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/apm/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/perfsight/apm/apm/c;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfsight/apm/apm/c;->b:I

    iput v0, p0, Lcom/perfsight/apm/apm/c;->c:I

    iput-boolean v0, p0, Lcom/perfsight/apm/apm/c;->d:Z

    iput v0, p0, Lcom/perfsight/apm/apm/c;->e:I

    iput v0, p0, Lcom/perfsight/apm/apm/c;->f:I

    iput v0, p0, Lcom/perfsight/apm/apm/c;->g:I

    iput v0, p0, Lcom/perfsight/apm/apm/c;->h:I

    return-void
.end method

.method public static a()Lcom/perfsight/apm/apm/c;
    .locals 2

    sget-object v0, Lcom/perfsight/apm/apm/c;->a:Lcom/perfsight/apm/apm/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/perfsight/apm/apm/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/apm/c;->a:Lcom/perfsight/apm/apm/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfsight/apm/apm/c;

    invoke-direct {v1}, Lcom/perfsight/apm/apm/c;-><init>()V

    sput-object v1, Lcom/perfsight/apm/apm/c;->a:Lcom/perfsight/apm/apm/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/perfsight/apm/apm/c;->a:Lcom/perfsight/apm/apm/c;

    return-object v0
.end method

.method private f(I)Lcom/perfsight/apm/apm/c$a;
    .locals 5

    invoke-static {}, Lcom/perfsight/apm/apm/c$a;->values()[Lcom/perfsight/apm/apm/c$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/perfsight/apm/apm/c$a;->a:Lcom/perfsight/apm/apm/c$a;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;IZ)I
    .locals 2

    invoke-direct {p0, p2}, Lcom/perfsight/apm/apm/c;->f(I)Lcom/perfsight/apm/apm/c$a;

    move-result-object p2

    sget-object v0, Lcom/perfsight/apm/apm/b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, -0x2

    return p1

    :pswitch_0
    invoke-static {p1}, Lcom/perfsight/apm/apm/p;->b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-static {p1}, Lcom/perfsight/apm/apm/p;->a(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/perfsight/apm/apm/c;->h:I

    return p1

    :cond_1
    return v0

    :pswitch_1
    if-eqz p3, :cond_2

    iget p1, p0, Lcom/perfsight/apm/apm/c;->f:I

    :goto_0
    shr-int/lit8 p1, p1, 0xa

    return p1

    :cond_2
    invoke-static {p1, v0}, Lcom/perfsight/apm/apm/o;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/o$a;

    move-result-object p1

    iget p1, p1, Lcom/perfsight/apm/apm/o$a;->d:I

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/perfsight/apm/utils/d;->c(Landroid/content/Context;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getNativeBatteryTemp()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/perfsight/apm/apm/c;->a(I)V

    :cond_3
    iget p1, p0, Lcom/perfsight/apm/apm/c;->e:I

    return p1

    :pswitch_4
    iget-boolean p1, p0, Lcom/perfsight/apm/apm/c;->d:Z

    return p1

    :pswitch_5
    iget p1, p0, Lcom/perfsight/apm/apm/c;->b:I

    return p1

    :pswitch_6
    if-nez p3, :cond_4

    invoke-static {p1}, Lcom/perfsight/apm/d/a;->a(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/perfsight/apm/apm/c;->c(I)V

    :cond_4
    iget p1, p0, Lcom/perfsight/apm/apm/c;->c:I

    return p1

    :pswitch_7
    if-eqz p3, :cond_5

    iget p1, p0, Lcom/perfsight/apm/apm/c;->g:I

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Lcom/perfsight/apm/apm/o;->a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/o$a;

    move-result-object p1

    iget p1, p1, Lcom/perfsight/apm/apm/o$a;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 1

    if-gez p1, :cond_0

    mul-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/perfsight/apm/apm/c;->e:I

    return-void
.end method

.method public a(Lcom/perfsight/apm/apm/o$a;)V
    .locals 1

    iget v0, p1, Lcom/perfsight/apm/apm/o$a;->d:I

    iput v0, p0, Lcom/perfsight/apm/apm/c;->f:I

    iget p1, p1, Lcom/perfsight/apm/apm/o$a;->a:I

    iput p1, p0, Lcom/perfsight/apm/apm/c;->g:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/perfsight/apm/apm/c;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/perfsight/apm/apm/c;->h:I

    return-void
.end method

.method public c(I)V
    .locals 1

    if-gez p1, :cond_0

    mul-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/perfsight/apm/apm/c;->c:I

    return-void
.end method

.method public d(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/perfsight/apm/apm/c;->d:Z

    return-void
.end method

.method public e(I)V
    .locals 2

    int-to-float p1, p1

    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/perfsight/apm/apm/c;->b:I

    return-void
.end method
