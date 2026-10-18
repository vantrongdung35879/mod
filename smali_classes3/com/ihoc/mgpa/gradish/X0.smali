.class public Lcom/ihoc/mgpa/gradish/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/X0;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/W0;->a()Lcom/ihoc/mgpa/gradish/W0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/W0;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/X0;->a:Ljava/lang/String;

    const-string p2, "ThreadAffinityObserver key data run exception."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/W0;->a()Lcom/ihoc/mgpa/gradish/W0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/W0;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/X0;->a:Ljava/lang/String;

    const-string v0, "ThreadAffinityObserver map data run exception."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
