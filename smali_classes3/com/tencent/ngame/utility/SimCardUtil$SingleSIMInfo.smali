.class public Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;
.super Ljava/lang/Object;
.source "SimCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/SimCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleSIMInfo"
.end annotation


# instance fields
.field public carrierName:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/ngame/utility/SimCardUtil;


# direct methods
.method public constructor <init>(Lcom/tencent/ngame/utility/SimCardUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "imsi",
            "imei",
            "carrierName"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->this$0:Lcom/tencent/ngame/utility/SimCardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->imsi:Ljava/lang/String;

    .line 292
    iput-object p3, p0, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->imei:Ljava/lang/String;

    .line 293
    iput-object p4, p0, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->carrierName:Ljava/lang/String;

    return-void
.end method
