.class public Lcom/ihoc/mgpa/gradish/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Predownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/w0;->a:Ljava/lang/String;

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
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isPreDownloadFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SUB_VERCODE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setSubVersionCode(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/ihoc/mgpa/gradish/w0;->a:Ljava/lang/String;

    const-string p2, "no main version , do not need save/report version info."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object p1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ihoc/mgpa/gradish/q0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->MAIN_VERCODE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 10
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setMainVersionCode(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/ihoc/mgpa/gradish/w0;->a:Ljava/lang/String;

    const-string p2, "no sub version , do not need save/report version info."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object p1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ihoc/mgpa/gradish/q0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 17
    sget-object p1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/q0;->c:Lcom/ihoc/mgpa/gradish/j;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/j;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/w0;->a:Ljava/lang/String;

    const-string p2, "Predownload observer key data run exception, ple check it!"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2

    .line 25
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ihoc/mgpa/gradish/w0;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    sget-object p1, Lcom/ihoc/mgpa/gradish/w0;->a:Ljava/lang/String;

    const-string v0, "Predownload observer map data run exception, ple check it!"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
