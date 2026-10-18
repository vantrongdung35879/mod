.class public final Lcom/ihoc/mgpa/foldscreen/cloud/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

.field public static b:Z

.field public static c:Z

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "FoldScreenCloudData: "

    .line 1
    :try_start_0
    const-string v1, "com.ihoc.mgpa.function.SharedConfig"

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->field(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    .line 2
    const-string v2, "isFoldScreenOpen"

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sharedConfig.call(\"isFoldScreenOpen\").get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/ihoc/mgpa/foldscreen/cloud/a;->b:Z

    .line 3
    const-string v2, "getFoldScreenConfig"

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    const-string v3, "isFoldScreenDevice"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    sput-boolean v3, Lcom/ihoc/mgpa/foldscreen/cloud/a;->c:Z

    if-eqz v1, :cond_1

    .line 6
    const-string/jumbo v3, "useWindowInfoTracker"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_1
    sput-boolean v1, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d:Z

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeatureOpen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/ihoc/mgpa/foldscreen/cloud/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", FoldDeviceInCloud="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/ihoc/mgpa/foldscreen/cloud/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useWindowInfoTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
