.class public Lcom/ihoc/mgpa/gradish/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/ihoc/mgpa/gradish/z1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DataForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/z1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/ihoc/mgpa/gradish/z1;->b:Lcom/ihoc/mgpa/gradish/z1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/z1;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/z1;->b:Lcom/ihoc/mgpa/gradish/z1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/z1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/z1;->b:Lcom/ihoc/mgpa/gradish/z1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/z1;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/z1;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/z1;->b:Lcom/ihoc/mgpa/gradish/z1;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/z1;->b:Lcom/ihoc/mgpa/gradish/z1;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    sget-object p1, Lcom/ihoc/mgpa/gradish/z1;->a:Ljava/lang/String;

    const-string/jumbo v0, "this sdk version is not support yolo func!"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/z1;->a:Ljava/lang/String;

    const-string/jumbo v1, "this sdk version is not support yolo func!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
