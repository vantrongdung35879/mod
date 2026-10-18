.class Lcom/perfsight/apm/utils/j$c;
.super Lcom/perfsight/apm/utils/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.epicgames.ue4.GameActivity"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/j$c;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/perfsight/apm/utils/j$c;->b:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perfsight/apm/utils/j;-><init>(Lcom/perfsight/apm/utils/h;)V

    return-void
.end method

.method static b()Lcom/perfsight/apm/utils/j;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/utils/j$c;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfsight/apm/utils/j$c;

    invoke-direct {v0}, Lcom/perfsight/apm/utils/j$c;-><init>()V

    return-object v0
.end method
