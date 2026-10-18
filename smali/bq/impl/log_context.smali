.class public Lbq/impl/log_context;
.super Ljava/lang/Object;
.source "log_context.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static align4(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const-wide/16 v0, -0x4

    and-long/2addr p0, v0

    const-wide/16 v0, 0x4

    add-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Boolean;)V
    .locals 1

    .line 228
    sget-object v0, Lbq/def/log_arg_type_enum;->bool_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Byte;)V
    .locals 1

    .line 239
    sget-object v0, Lbq/def/log_arg_type_enum;->int8_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Character;)V
    .locals 1

    .line 233
    sget-object v0, Lbq/def/log_arg_type_enum;->char16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Double;)V
    .locals 2

    .line 268
    sget-object v0, Lbq/def/log_arg_type_enum;->double_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 269
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Float;)V
    .locals 1

    .line 263
    sget-object v0, Lbq/def/log_arg_type_enum;->float_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)V
    .locals 1

    .line 251
    sget-object v0, Lbq/def/log_arg_type_enum;->int32_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V
    .locals 2

    .line 257
    sget-object v0, Lbq/def/log_arg_type_enum;->int64_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 276
    sget-object p2, Lbq/def/log_arg_type_enum;->null_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {p2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/Short;)V
    .locals 1

    .line 245
    sget-object v0, Lbq/def/log_arg_type_enum;->int16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    .line 173
    sget-object p2, Lbq/def/log_arg_type_enum;->null_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {p2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 176
    sget-object v2, Lbq/def/log_arg_type_enum;->string_utf16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    long-to-int v2, v0

    .line 177
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    .line 180
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 181
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {v0, v1}, Lbq/impl/log_context;->align4(J)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method public add_param(Ljava/nio/ByteBuffer;Ljava/util/Map$Entry;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map$Entry<",
            "[I[J>;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 190
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-byte v3, v1

    .line 191
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 192
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v2, v3, v2

    .line 193
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x1

    aget-wide v5, v4, v5

    const-wide/16 v7, 0x4

    .line 195
    const-string v4, " with storage size:"

    const-string/jumbo v9, "unkown type "

    cmp-long v10, v5, v7

    if-gtz v10, :cond_4

    add-int/lit8 v7, v0, 0x2

    .line 197
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    sget-object v7, Lbq/def/log_arg_type_enum;->bool_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v7}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v7

    if-eq v1, v7, :cond_3

    sget-object v7, Lbq/def/log_arg_type_enum;->int8_type:Lbq/def/log_arg_type_enum;

    .line 199
    invoke-virtual {v7}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v7

    if-ne v1, v7, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    sget-object v7, Lbq/def/log_arg_type_enum;->char16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v7}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v7

    if-ne v1, v7, :cond_1

    long-to-int v1, v2

    int-to-char v1, v1

    .line 204
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 205
    :cond_1
    sget-object v7, Lbq/def/log_arg_type_enum;->int16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v7}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v7

    if-ne v1, v7, :cond_2

    long-to-int v1, v2

    int-to-short v1, v1

    .line 207
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    long-to-int v1, v2

    int-to-byte v1, v1

    .line 201
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 211
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x8

    cmp-long v10, v5, v7

    if-nez v10, :cond_5

    add-int/lit8 v0, v0, 0x4

    .line 214
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v0, v2

    .line 215
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    const-wide/16 v7, 0xc

    cmp-long v10, v5, v7

    if-nez v10, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 218
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 223
    :goto_2
    invoke-static {p2}, Lbq/utils/param;->return_param_wrapper_to_pool(Ljava/util/Map$Entry;)V

    return-void

    .line 221
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add_param_no_optimized(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 289
    sget-object p2, Lbq/def/log_arg_type_enum;->null_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {p2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    .line 292
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 295
    sget-object v1, Lbq/def/constants;->cls_param_wrapper:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 297
    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/util/Map$Entry;)V

    goto/16 :goto_0

    .line 298
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    .line 300
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 301
    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    .line 303
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Float;)V

    goto :goto_0

    .line 304
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 306
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 308
    :cond_4
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_5

    .line 310
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_5
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_6

    .line 313
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V

    goto :goto_0

    .line 314
    :cond_6
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_7

    .line 316
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Double;)V

    goto :goto_0

    .line 317
    :cond_7
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_8

    .line 319
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Character;)V

    goto :goto_0

    .line 320
    :cond_8
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_9

    .line 322
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Byte;)V

    goto :goto_0

    .line 323
    :cond_9
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_a

    .line 325
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/Short;)V

    goto :goto_0

    .line 326
    :cond_a
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_b

    .line 328
    check-cast p2, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lbq/impl/log_context;->add_param(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public begin_copy(Lbq/log;Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;J)Ljava/nio/ByteBuffer;
    .locals 13

    if-nez p4, :cond_0

    .line 154
    const-string v0, "null"

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    .line 156
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const/4 v12, 0x1

    shl-long v6, v0, v12

    .line 157
    invoke-virtual {p1}, Lbq/log;->get_id()J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Lbq/def/log_level;->ordinal()I

    move-result v0

    int-to-byte v3, v0

    invoke-static {p2}, Lbq/def/log_category_base;->get_index(Lbq/def/log_category_base;)J

    move-result-wide v4

    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    cmp-long v11, p5, v9

    if-nez v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    move-wide/from16 v9, p5

    invoke-static/range {v1 .. v11}, Lbq/impl/log_invoker;->__api_log_write_begin(JBJJLjava/lang/String;JZ)[Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    aget-object v2, v1, v12

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    aget-object v2, v1, v0

    aget-object v3, v1, v12

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    aget-object v0, v1, v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public end_copy(Lbq/log;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Lbq/log;->get_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbq/impl/log_invoker;->__api_log_write_finish(J)V

    return-void
.end method

.method public get_param_storage_size(Ljava/lang/Boolean;)J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Byte;)J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Character;)J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Double;)J
    .locals 2

    const-wide/16 v0, 0xc

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Float;)J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Integer;)J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Long;)J
    .locals 2

    const-wide/16 v0, 0xc

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x4

    return-wide v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/Short;)J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/lang/String;)J
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x4

    return-wide v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    const/4 p1, 0x1

    shl-long/2addr v0, p1

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lbq/impl/log_context;->align4(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_param_storage_size(Ljava/util/Map$Entry;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "[I[J>;)J"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public get_param_storage_size_no_optimized(Ljava/lang/Object;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x4

    return-wide v0

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 107
    sget-object v1, Lbq/def/constants;->cls_param_wrapper:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 109
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/util/Map$Entry;)J

    move-result-wide v0

    return-wide v0

    .line 110
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    .line 112
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Integer;)J

    move-result-wide v0

    return-wide v0

    .line 113
    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    .line 115
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Float;)J

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Boolean;)J

    move-result-wide v0

    return-wide v0

    .line 120
    :cond_4
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_5

    .line 122
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 123
    :cond_5
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_6

    .line 125
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0

    .line 126
    :cond_6
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_7

    .line 128
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Double;)J

    move-result-wide v0

    return-wide v0

    .line 129
    :cond_7
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_8

    .line 131
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Character;)J

    move-result-wide v0

    return-wide v0

    .line 132
    :cond_8
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_9

    .line 134
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Byte;)J

    move-result-wide v0

    return-wide v0

    .line 135
    :cond_9
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_a

    .line 137
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/Short;)J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_a
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_b

    .line 140
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 143
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbq/impl/log_context;->get_param_storage_size(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
