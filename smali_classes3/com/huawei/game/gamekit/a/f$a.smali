.class final Lcom/huawei/game/gamekit/a/f$a;
.super Lcom/huawei/game/gamekit/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/game/gamekit/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/huawei/game/gamekit/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string/jumbo v1, "temperature"

    const-string v2, "TempCurLevel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "cpu_level"

    const-string v2, "CpuCurLevel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "gpu_level"

    const-string v2, "GpuCurLevel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "cpu_load"

    const-string v2, "CpuLoadCurLevel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "gpu_load"

    const-string v2, "GpuLoadCurLevel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "fps_limit"

    const-string v2, "FpsLimit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "rpic_set"

    const-string v2, "RpicSet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "fps"

    const-string v2, "Fps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "frame_drops"

    const-string v2, "FrameDrops"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    const-string v1, "game_overheat"

    const-string v2, "GameOverHeat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/huawei/game/gamekit/a/f$a;->b:Ljava/util/Map;

    return-object p1
.end method
