.class public Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
.super Ljava/lang/Object;
.source "SimCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/SimCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIMInfo"
.end annotation


# instance fields
.field public chipName:Ljava/lang/String;

.field public chipType:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

.field public l_ssim_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/ngame/utility/SimCardUtil;


# direct methods
.method public constructor <init>(Lcom/tencent/ngame/utility/SimCardUtil;Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "type",
            "name"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->this$0:Lcom/tencent/ngame/utility/SimCardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->chipType:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    .line 308
    iput-object p3, p0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->chipName:Ljava/lang/String;

    .line 309
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->l_ssim_info:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imsi",
            "imei",
            "carrierName"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->l_ssim_info:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;

    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->this$0:Lcom/tencent/ngame/utility/SimCardUtil;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;-><init>(Lcom/tencent/ngame/utility/SimCardUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
