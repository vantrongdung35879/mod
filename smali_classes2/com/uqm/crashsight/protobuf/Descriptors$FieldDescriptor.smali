.class public final Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;


# instance fields
.field private final b:I

.field private c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

.field private i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private j:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private k:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

.field private l:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1048
    invoke-static {}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->values()[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    .line 1256
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1257
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1315
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    .line 1316
    iput p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b:I

    .line 1317
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1318
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    .line 1319
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 1320
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1321
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Ljava/lang/String;

    goto :goto_2

    .line 1323
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object p4

    .line 11287
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 11288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 11291
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    const/16 v4, 0x61

    if-gt v4, v5, :cond_2

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_2

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    .line 11300
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    .line 11303
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11306
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1323
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Ljava/lang/String;

    .line 1326
    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1327
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p4

    invoke-static {p4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    .line 11975
    :cond_5
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result p4

    if-lez p4, :cond_d

    const/4 p4, 0x0

    if-eqz p5, :cond_9

    .line 1335
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result p5

    if-eqz p5, :cond_8

    .line 1339
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz p3, :cond_6

    .line 1341
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    goto :goto_3

    .line 1343
    :cond_6
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 1346
    :goto_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1350
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    goto :goto_5

    .line 1347
    :cond_7
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    .line 1336
    :cond_8
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    .line 1352
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result p5

    if-nez p5, :cond_c

    .line 1356
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 1358
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result p5

    if-eqz p5, :cond_b

    .line 1359
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result p5

    if-ltz p5, :cond_a

    .line 1360
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result p5

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v1

    if-ge p5, v1, :cond_a

    .line 1365
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    .line 1366
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)I

    goto :goto_4

    .line 1361
    :cond_a
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    .line 1368
    :cond_b
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    .line 1370
    :goto_4
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 1373
    :goto_5
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    .line 1353
    :cond_c
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    .line 1331
    :cond_d
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 949
    invoke-direct/range {p0 .. p5}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 15378
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const-string v2, "\""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 15379
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 15380
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15381
    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 15380
    invoke-virtual {v0, v4, p0, v5}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 15382
    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_1

    .line 15386
    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 16975
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v4

    .line 15388
    invoke-virtual {v0, v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15389
    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17120
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 15392
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17975
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v2

    .line 15394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15383
    :cond_1
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15384
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15399
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15400
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 15401
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15402
    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 15401
    invoke-virtual {v0, v4, p0, v5}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 15404
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v4

    if-nez v4, :cond_5

    .line 15406
    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_3

    .line 15407
    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    .line 15408
    :cond_3
    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_4

    .line 15409
    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    .line 15411
    :cond_4
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15412
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 17998
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    .line 15416
    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    .line 15417
    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_7

    .line 15421
    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->j:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 15423
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 15424
    :cond_6
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15418
    :cond_7
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15419
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 18998
    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    .line 15426
    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_a

    .line 15427
    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_9

    .line 15431
    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    goto :goto_2

    .line 15428
    :cond_9
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15429
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15433
    :cond_a
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 19998
    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    .line 15436
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1e

    .line 20998
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    .line 15436
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1e

    .line 15443
    :goto_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 15444
    :cond_c
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15450
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 15451
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x22

    .line 15457
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$1;->a:[I

    .line 21015
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    .line 15457
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 15521
    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v2, "Message type had default value."

    invoke-direct {v1, p0, v2, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v1

    .line 15513
    :pswitch_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    if-eqz v1, :cond_e

    goto/16 :goto_4

    .line 15515
    :cond_e
    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown enum default value: \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15516
    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15506
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/CharSequence;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_0
    move-exception v1

    .line 15508
    :try_start_3
    new-instance v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t parse default value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15509
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v2

    .line 15502
    :pswitch_3
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15499
    :pswitch_4
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15488
    :pswitch_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 15489
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15490
    :cond_f
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 15491
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15492
    :cond_10
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 15493
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15495
    :cond_11
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15477
    :pswitch_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 15478
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15479
    :cond_12
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 15480
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15481
    :cond_13
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 15482
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15484
    :cond_14
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15474
    :pswitch_7
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->e(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15470
    :pswitch_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->d(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15465
    :pswitch_9
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 15461
    :pswitch_a
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 15524
    new-instance v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse default value: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 15525
    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v2

    .line 15452
    :cond_15
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15529
    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto :goto_4

    .line 15532
    :cond_17
    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$1;->b:[I

    .line 21998
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    .line 15532
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 22998
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    .line 15542
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    .line 15539
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto :goto_4

    .line 15536
    :cond_19
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    .line 23112
    :goto_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 15549
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 15552
    :cond_1a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 24112
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 15554
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->n()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 25015
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    .line 15554
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1b

    goto :goto_5

    .line 15555
    :cond_1b
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 15559
    :cond_1c
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_1d
    :goto_5
    return-void

    .line 15437
    :cond_1e
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 957
    iget v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b:I

    return v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0

    .line 1575
    check-cast p1, Lcom/uqm/crashsight/protobuf/Message$Builder;

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 949
    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 13186
    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    .line 13975
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v0

    .line 14975
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 13187
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;
    .locals 2

    .line 1021
    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 12963
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final k()Z
    .locals 3

    .line 1026
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 1029
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3010
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 1033
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_2

    return v1

    .line 4010
    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 1036
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 4015
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1040
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 3

    .line 1072
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5010
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 1075
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_1

    .line 5107
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    return v0

    .line 6107
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7107
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Ljava/lang/Object;
    .locals 2

    .line 7998
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    .line 1098
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    return-object v0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    return v0
.end method

.method public final t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 10985
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    return-object v0
.end method

.method public final v()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 4

    .line 8112
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0

    .line 1151
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1152
    const-string v1, "This field is not an extension. (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 4

    .line 8998
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    .line 1159
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->j:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1161
    const-string v1, "This field is not of message type. (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;
    .locals 4

    .line 9998
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    .line 1169
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    return-object v0

    .line 1170
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1171
    const-string v1, "This field is not of enum type. (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
