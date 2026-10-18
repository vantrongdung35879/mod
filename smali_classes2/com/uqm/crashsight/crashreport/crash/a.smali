.class public final Lcom/uqm/crashsight/crashreport/crash/a;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/crashreport/crash/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/locks/Lock;

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    .line 17
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    .line 20
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    .line 21
    iput v1, p0, Lcom/uqm/crashsight/crashreport/crash/a;->g:I

    .line 24
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    .line 26
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->j:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 27
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/a;->k:J

    .line 28
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 14
    check-cast p1, Lcom/uqm/crashsight/crashreport/crash/a;

    if-eqz p1, :cond_1

    .line 1036
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
