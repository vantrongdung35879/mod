.class Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$TaskLocalManagerInstance;
.super Ljava/lang/Object;
.source "TaskCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskLocalManagerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$TaskLocalManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager$TaskLocalManagerInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    return-object v0
.end method
