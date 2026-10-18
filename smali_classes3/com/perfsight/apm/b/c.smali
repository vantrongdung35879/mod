.class public final Lcom/perfsight/apm/b/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Class;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/perfsight/apm/jni/TApmNativeHelper;

    sput-object v0, Lcom/perfsight/apm/b/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/b/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfsight/apm/b/c;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/perfsight/apm/b/c;->d:Z

    return-void
.end method

.method public static a(Lcom/perfsight/apm/b/c;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/b/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfsight/apm/b/c;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
